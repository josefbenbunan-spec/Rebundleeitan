---
name: peer-review
description: Muestra las preguntas de peer review del módulo actual
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

Muestra las preguntas de peer review del módulo actual.

## Comportamiento

1. Leer `memory/learning/progress.json` para obtener `current_module`
2. Leer el archivo `modulos/X/peer-review.md` correspondiente
3. Mostrar el contenido

## Si no encuentra el archivo

```
No hay preguntas de peer review para este momento.
Continúa con el ejercicio actual.
```

## Recordatorio

Después de mostrar las preguntas, añadir:

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Tómate 10-15 minutos para discutir con tu compañero.
Cuando terminen, escribe LISTO.
```

## Después de que el estudiante escriba "LISTO"

Usar la herramienta **AskUserQuestion** para preguntar:
- Pregunta: "¿Qué quieres hacer ahora?"
- Opciones:
  - "Explorar más" (descripción: "Seguir experimentando dentro del módulo actual")
  - "Ya estoy listo para continuar" (descripción: "Pasar al siguiente módulo")

**Si elige "Explorar más":**
Usar AskUserQuestion para preguntarle qué dirección le gustaría explorar dentro del módulo actual. Guiar una exploración libre. No anticipar contenido de módulos posteriores.

**Si elige "Ya estoy listo para continuar":**
Ejecutar AUTOMÁTICAMENTE el skill `/desbloquear` (sin pedir nada al alumno, sin mencionar variables internas). El skill detectará que no se requiere código y avanzará directamente al siguiente módulo.
