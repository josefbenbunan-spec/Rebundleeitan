---
name: desbloquear
description: Avanza al siguiente módulo del curso. En sesiones que requieren código, lo valida con el profesor; en las que no, avanza directo.
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

Sistema para avanzar entre módulos del curso presencial.

## Uso

```
/desbloquear
```

El argumento es opcional; en esta sesión se ignora — cualquier alumno puede avanzar al siguiente módulo cuando esté listo.

## Comportamiento

### Calcular fingerprint del dispositivo

El fingerprint se calcula SIEMPRE (nunca se lee de `activation.json`):

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

### Leer datos de activación

```bash
CODE=$(node -e "console.log(JSON.parse(require('fs').readFileSync('memory/activation.json','utf8')).code)")
API_URL=$(node -e "console.log(JSON.parse(require('fs').readFileSync('memory/activation.json','utf8')).api_url)")
```

### Avanzar al siguiente módulo

Esta sesión no requiere código. Cuando el alumno invoque `/desbloquear` (manual o auto-invocado por el cierre del módulo en `ESTUDIANTE.md`), avanza directamente con este flow. Si el alumno pasó un argumento (ej. `/desbloquear FOO`), ignorarlo.

1. Reportar progreso al servidor (módulo completado):

```bash
# Reportar módulo completado (BLOCKING)
curl -s -X POST "$API_URL/api/progress" \
  -H "Content-Type: application/json" \
  -d "{\"code\": \"$CODE\", \"fingerprint\": \"$FINGERPRINT\", \"module\": $CURRENT_MODULE, \"event_type\": \"module_completed\"}"
```

Comprobar la respuesta. Si contiene `error_code`:
- `"revoked"` → "Tu código ha sido revocado. Contacta al profesor." **Parar inmediatamente, no reintentar.** Razón: estos estados son permanentes en DB; reintentar gasta requests y confunde al alumno con el mismo error.
- `"expired"` → "Tu código ha expirado." Mismo comportamiento que `revoked`.

2. Descargar el siguiente módulo watermarked desde el servidor:

```bash
NEXT_MODULE=$((CURRENT_MODULE + 1))

# Descargar modulo (NO leer el output directamente)
curl -s -H "x-code: $CODE" -H "x-fingerprint: $FINGERPRINT" \
  "$API_URL/api/module/$NEXT_MODULE" -o /tmp/rebundle_module.json

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

No leer `/tmp/rebundle_module.json` desde el chat. Razón: el JSON contiene watermarks y referencias internas que no deben aparecer en la conversación con el alumno — el script las procesa y escribe los archivos sin exponerlas.

3. Borrar el módulo anterior del disco:

```bash
rm -rf modulos/$CURRENT_MODULE-*/
```

4. Actualizar `memory/learning/progress.json`:
   ```json
   {
     "module_unlocked": [NUEVO_MÓDULO],
     "current_module": [NUEVO_MÓDULO]
   }
   ```

5. Mostrar mensaje de éxito (ver sección "Mensajes de Desbloqueo por Módulo"). Indexar por `NEXT_MODULE` para escoger el mensaje correcto.

### Si la API falla

Comprobar `error_code`:
- `"revoked"` o `"expired"` → mensaje al alumno + parar inmediatamente, no reintentar (mismo razonamiento que arriba: estados permanentes).
- Otros errores de conexión → advertir: "No se pudo conectar con el servidor. Puedes continuar en modo offline si el profesor proporciona los materiales."

No bloquear al estudiante. Si los archivos del módulo ya existen localmente, permitir continuar.


## Mensajes de Desbloqueo por Módulo

### Módulo 2
```
🔓 ¡Módulo 2 desbloqueado!

Bienvenido a "Los Datos → Los Insights"

Ahora que tienes orden, vamos a extraer conocimiento.
Aprenderás a:
- Sacar datos de múltiples documentos
- Encontrar patrones y tendencias
- Generar informes ejecutivos

Escribe "siguiente" para comenzar.
```

### Módulo 3
```
🔓 ¡Módulo 3 desbloqueado!

Bienvenido a "La Idea → El Sistema"

Ya dominas los datos. Ahora construirás tu propio sistema.
Aprenderás:
- CLAUDE.md: crear reglas para tus proyectos
- Skills personalizados
- Plan Mode: planificar antes de actuar

Escribe "siguiente" para comenzar.
```

### Módulo 4
```
🔓 ¡Módulo 4 desbloqueado!

Bienvenido a "El Prototipo → El Producto"

Llegó el momento de crear algo tangible.
En este módulo:
- Crearás una landing page con Vibe Coding
- Construirás una mini-app funcional
- Presentarás tu proyecto al grupo

Escribe "siguiente" para comenzar.
```

### Finalización del curso
```
🎉 ¡CURSO COMPLETADO!

Has recorrido el camino completo:

✅ Módulo 1: Transformaste el caos en orden
✅ Módulo 2: Convertiste datos en insights
✅ Módulo 3: Construiste tu sistema personalizado
✅ Módulo 4: Creaste tu prototipo

Ahora tienes las herramientas para usar Claude Code
en cualquier proyecto.

📦 Tu toolkit de Claude Code incluye:
- CLAUDE.md para configurar comportamientos
- Skills para automatizar tareas
- Plan Mode para pensar antes de actuar
- Vibe Coding para prototipar rápido

¡Enhorabuena! 🚀
```

