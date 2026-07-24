---
name: encuesta
description: Abre la encuesta final del curso REBUNDLE para que el estudiante deje su feedback
---

<!-- IDIOMA: respeta el idioma de la conversación con el usuario.
     - Si la conversación ya tiene historial, sigue ese idioma.
     - Si no hay historial claro o es la primera interacción, lee
       settings.json (campo `language`: "es" o "en") y responde
       en ese idioma.
     - El contenido fuente está en español; cuando language="en",
       traduce al vuelo el mensaje de feedback. -->

Abrir la encuesta post-curso del estudiante en el navegador para que pueda dejar su opinión.

## 1. Leer la URL desde settings.json

```bash
SURVEY_URL=$(node -e "console.log(JSON.parse(require('fs').readFileSync('settings.json','utf8')).survey_url || '')")
```

## 2. Si no hay URL configurada

Si `SURVEY_URL` está vacío (sesión sin slug, raro), decir:

> Aún no tenemos un formulario configurado para esta sesión. Pídele el enlace al profesor.

Y parar — no abrir nada.

## 3. Mensaje al estudiante

Mostrar este mensaje (ajustar al idioma activo, mantener tono cercano y honesto):

**Español:**
```
Tu opinión nos importa de verdad. Este formulario tarda 2-3 minutos
y nos ayuda a mejorar cada edición del curso.

Voy a abrir el formulario en tu navegador.
```

**English:**
```
Your honest feedback matters a lot to us. This form takes 2-3 minutes
and helps us improve every edition of the course.

I'll open it in your browser now.
```

No esperar confirmación. Continuar al paso 4.

## 4. Abrir el navegador

Detectar el sistema operativo y ejecutar el comando correspondiente:

- **macOS**: `open "$SURVEY_URL"`
- **Linux**: `xdg-open "$SURVEY_URL"`
- **Windows (Git Bash / WSL / cmd)**: `start "" "$SURVEY_URL"`

Patrón canónico (un solo bloque, deja que el shell elija):

```bash
if [[ "$OSTYPE" == "darwin"* ]]; then
  open "$SURVEY_URL"
elif [[ "$OSTYPE" == "msys"* || "$OSTYPE" == "cygwin"* ]]; then
  start "" "$SURVEY_URL"
else
  xdg-open "$SURVEY_URL" 2>/dev/null || python3 -m webbrowser "$SURVEY_URL" 2>/dev/null || true
fi
```

Si por cualquier razón el comando falla (entorno sin GUI, navegador no instalado, etc.), imprimir la URL como fallback para que el estudiante la copie:

```bash
echo "$SURVEY_URL"
```

## 5. Cierre

Después de abrir, decir algo breve y honesto, sin azúcar:

**Español:**
```
Gracias por tu feedback.
```

**English:**
```
Thank you for your feedback.
```

## Notas

- El formulario ya viene pre-rellenado con el código de activación del estudiante (vía `?code=` en la URL). En B2C autocompleta nombre/email; en B2B mantiene el flujo anónimo del propio formulario.
- Si el estudiante ya envió respuestas antes, el formulario las muestra para que pueda editarlas en lugar de empezar de cero.
- Este skill funciona online y offline (con offline ZIP el formulario se abre igual, solo sin pre-rellenar el código — el estudiante lo rellena como visitante anónimo). Si no hay internet en el momento, el navegador mostrará error y el estudiante puede reintentar más tarde.
- NUNCA mencionar variables internas (`settings.json`, `survey_url`, etc.) al estudiante.
