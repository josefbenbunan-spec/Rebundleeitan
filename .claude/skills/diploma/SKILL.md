---
name: diploma
description: Genera tu diploma del curso REBUNDLE y un enlace para añadirlo a LinkedIn
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

**Transparencia:** NUNCA mencionar variables internas (`diploma_enabled`, `settings.json`, etc.) al estudiante. Si se llega aquí al cerrar el M3, la felicitación y el anuncio ("ahora voy a generar tu diploma") ya los dio el cierre del módulo. Si el estudiante invoca `/diploma` manualmente, arrancar directamente con el Paso 1.

## Paso 1: Pregunta el nombre

Pregunta al estudiante: "¿Qué nombre completo quieres que aparezca en tu diploma?"

Espera su respuesta.

## Paso 2: Confirma el nombre

Usa AskUserQuestion para confirmar:
- Pregunta: "¿Este es el nombre correcto para tu diploma: [NOMBRE QUE DIJO]?"
- Opciones: "Sí, correcto", "No, quiero cambiarlo"

Si quiere cambiarlo, vuelve a preguntar.

## Paso 3: Genera el diploma vía servidor

Leer datos de activación:

```bash
CODE=$(node -e "console.log(JSON.parse(require('fs').readFileSync('memory/activation.json','utf8')).code)")
API_URL=$(node -e "console.log(JSON.parse(require('fs').readFileSync('memory/activation.json','utf8')).api_url)")

# Calcular fingerprint
FINGERPRINT=$(echo -n "$(hostname)$(whoami)" | shasum -a 256 2>/dev/null | cut -d' ' -f1)
if [ -z "$FINGERPRINT" ]; then
  FINGERPRINT=$(echo -n "$(hostname)$(whoami)" | sha256sum 2>/dev/null | cut -d' ' -f1)
fi
if [ -z "$FINGERPRINT" ]; then
  FINGERPRINT=$(node -e "console.log(require('crypto').createHash('sha256').update(require('os').hostname()+require('os').userInfo().username).digest('hex'))")
fi
```

Llamar al endpoint del servidor:

```bash
RESPONSE=$(curl -s -X POST "$API_URL/api/diploma" \
  -H "Content-Type: application/json" \
  -d "{\"code\": \"$CODE\", \"fingerprint\": \"$FINGERPRINT\", \"student_name\": \"$STUDENT_NAME\"}")
```

Comprobar la respuesta. Si contiene `error_code`:
- `"revoked"` -> "Tu código ha sido revocado. Contacta al profesor." **PARAR.**
- `"expired"` -> "Tu código ha expirado." **PARAR.**
- Otro error -> mostrar el mensaje y **PARAR.**

Extraer URLs de la respuesta:

```bash
IMAGE_SHORT=$(node -e "console.log(JSON.parse(process.argv[1]).image_url_short)" "$RESPONSE")
LINKEDIN_SHORT=$(node -e "console.log(JSON.parse(process.argv[1]).linkedin_url_short)" "$RESPONSE")
```

## Paso 4: Mostrar resultados

Decir al estudiante:

```
🎓 ¡Tu diploma está listo! Haz clic en el enlace para verlo:
```

Luego usar bash echo para imprimir la URL:
```bash
echo "$IMAGE_SHORT"
```

Después decir:

```
🔗 Haz clic en el siguiente enlace para añadirlo a tu perfil de LinkedIn:
```

Y usar bash echo para imprimir la URL:
```bash
echo "$LINKEDIN_SHORT"
```

## Paso 5: Invitar al feedback final

Si el estudiante todavía no ha dejado su feedback (es decir, /encuesta aún no se ejecutó en esta sesión), recordárselo de forma natural y breve. NO bloquear, solo invitar:

```
Antes de cerrar, si aún no lo has hecho, ejecuta /encuesta para dejarnos
tu opinión sobre el curso. 2-3 minutos. Nos importa de verdad.
```

Si ya se ejecutó /encuesta antes en esta conversación, omitir este paso.

## Fallback: Si no hay activación

Si `memory/activation.json` no existe (modo offline o sin activar):
- Sugerir al estudiante que contacte al profesor para generar el diploma manualmente

## Notas importantes

- Todo se genera en el servidor: imagen, URLs, y acortamiento de URLs
- NO acortar URLs en el cliente (el servidor ya devuelve versiones cortas)
- Si el curl falla, reintentar una vez. Si sigue fallando, decir al estudiante que contacte al profesor
