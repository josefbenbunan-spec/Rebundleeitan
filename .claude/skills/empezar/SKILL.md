---
name: empezar
description: Activa el curso REBUNDLE con tu código de acceso
---

<!-- IDIOMA: respeta el idioma de la conversación con el usuario.
     - Si la conversación ya tiene historial, sigue ese idioma.
     - Si no hay historial claro o es la primera interacción, lee
       settings.json (campo `language`: "es" o "en") y responde
       en ese idioma.
     - El contenido fuente está en español; cuando language="en",
       traduce al vuelo manteniendo nombres propios y IDs.
     - Si el usuario pide cambiar idioma, edita settings.json
       local (`language`) y continúa en el nuevo idioma. -->

Skill de activación del curso REBUNDLE presencial.

## Uso

```
/empezar
```

## Flujo

### 1. Leer configuración

Leer `settings.json` en la raíz del proyecto. Verificar si ya hay un `activation_code` guardado.

### 2. Calcular fingerprint del dispositivo

El fingerprint se calcula SIEMPRE (nunca se almacena):

```bash
# Calcular fingerprint del dispositivo
FINGERPRINT=$(echo -n "$(hostname)$(whoami)" | shasum -a 256 2>/dev/null | cut -d' ' -f1)
if [ -z "$FINGERPRINT" ]; then
  FINGERPRINT=$(echo -n "$(hostname)$(whoami)" | sha256sum 2>/dev/null | cut -d' ' -f1)
fi
if [ -z "$FINGERPRINT" ]; then
  FINGERPRINT=$(node -e "console.log(require('crypto').createHash('sha256').update(require('os').hostname()+require('os').userInfo().username).digest('hex'))")
fi
```

### 3. Si no está activado (activation_code es null) - PRIMERA VEZ

Preguntar: "Introduce tu código de acceso (formato RB-XXXX-XXXX):"

Esperar respuesta del estudiante.

Leer `api_url` de settings.json.

Hacer POST al servidor:

```bash
API_URL=$(node -e "console.log(JSON.parse(require('fs').readFileSync('settings.json','utf8')).api_url)")
curl -s -X POST "$API_URL/api/activate" \
  -H "Content-Type: application/json" \
  -d "{\"code\": \"$CODE\", \"device_fingerprint\": \"$FINGERPRINT\"}"
```

Si la respuesta tiene `"status": "activated"`:

1. Crear `memory/activation.json`:
```json
{
  "code": "[CÓDIGO]",
  "api_url": "[API_URL]",
  "activated_at": "[TIMESTAMP]"
}
```

2. Actualizar `activation_code` en `settings.json` con el código introducido.

3. Confirmar: "¡Código activado! Bienvenido al curso."

4. Continuar con **Paso 5** (descargar Módulo 1).

Si la respuesta tiene error: comprobar el campo `error_code`:
- `"revoked"` → "Tu código ha sido revocado. Contacta al profesor." **PARAR.**
- `"expired"` → "Tu código ha expirado." **PARAR.**
- Otro error → mostrar el mensaje de error y **PARAR.**

### 4. Si ya está activado (activation_code no es null) - RETORNO

Leer `memory/activation.json` para obtener `code` y `api_url`:

```bash
CODE=$(node -e "console.log(JSON.parse(require('fs').readFileSync('memory/activation.json','utf8')).code)")
API_URL=$(node -e "console.log(JSON.parse(require('fs').readFileSync('memory/activation.json','utf8')).api_url)")
```

Hacer POST al servidor para verificar estado:

```bash
curl -s -X POST "$API_URL/api/activate" \
  -H "Content-Type: application/json" \
  -d "{\"code\": \"$CODE\", \"device_fingerprint\": \"$FINGERPRINT\"}"
```

- Si responde `"status": "resumed"`: saludar al estudiante y continuar con el módulo actual. NO descargar M1 de nuevo.
- Si responde error con `error_code`:
  - `"revoked"` → "Tu código ha sido revocado. Contacta al profesor." **PARAR.**
  - `"expired"` → "Tu código ha expirado." **PARAR.**
  - Otro error → mostrar el error y **PARAR.**

### 5. Descargar Módulo 1 (solo primera vez)

Inmediatamente después de activar, descargar el contenido del Módulo 1 watermarked:

```bash
# Descargar modulo (NO leer el output directamente)
curl -s -H "x-code: $CODE" -H "x-fingerprint: $FINGERPRINT" \
  "$API_URL/api/module/1" -o /tmp/rebundle_module.json

# Procesar archivos
if command -v python3 &>/dev/null; then
  python3 -c "
import json, os, sys
data = json.load(open('/tmp/rebundle_module.json'))
if 'error' in data: print('Error:', data['error']); sys.exit(1)
for f in data['files']:
    d = os.path.dirname(f['path'])
    if d: os.makedirs(d, exist_ok=True)
    open(f['path'], 'w').write(f['content'])
    print(f'  Creado: {f[\"path\"]}')
"
else
  node -e "
const fs=require('fs'),p=require('path');
const data=JSON.parse(fs.readFileSync('/tmp/rebundle_module.json','utf8'));
if(data.error){console.error('Error:',data.error);process.exit(1)}
data.files.forEach(f=>{const d=p.dirname(f.path);if(d)fs.mkdirSync(d,{recursive:true});fs.writeFileSync(f.path,f.content);console.log('  Creado:',f.path)});
"
fi
rm -f /tmp/rebundle_module.json
```

**IMPORTANTE: NO leas el archivo /tmp/rebundle_module.json. Solo ejecuta el script.**

Si falla la descarga: advertir al estudiante y sugerir contactar al profesor.
### 6. Onboarding

Continuar con el onboarding normal del curso (banner, nombre, OS, rol, etc. según CLAUDE.md).

Preguntar al estudiante:
- **Nombre** ($NAME)
- **Rol** ($ROLE) - seleccionar de los roles disponibles en settings.json
- **Sistema operativo** ($OS) - Mac o Windows

### 7. Reportar onboarding completado

Después de recoger nombre, rol y OS:

```bash
# Reportar onboarding completado (no bloqueante)
curl -s -X POST "$API_URL/api/progress" \
  -H "Content-Type: application/json" \
  -d "{\"code\":\"$CODE\",\"fingerprint\":\"$FINGERPRINT\",\"module\":1,\"exercise\":0,\"event_type\":\"onboarding_complete\",\"metadata\":{\"name\":\"$NAME\",\"role\":\"$ROLE\",\"os\":\"$OS\"}}" &>/dev/null || true
```

### 8. Si no hay conexión

Si el curl falla por timeout o error de red:
- Advertir: "No hay conexión con el servidor. Puedes continuar en modo offline con el Módulo 1."
- Guardar el código localmente para reintentar después.
