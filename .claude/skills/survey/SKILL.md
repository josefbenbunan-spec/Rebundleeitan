---
name: survey
description: Opens the final REBUNDLE course feedback form (English wrapper for /encuesta)
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

English entry point for the post-course feedback flow. This skill is a thin wrapper around `/encuesta`.

1. Open `.claude/skills/encuesta/SKILL.md` and follow that workflow internally — it has the full logic (read `survey_url` from `settings.json`, show the feedback intro message, open the form in the student's browser, close with a short thank-you).
2. Respond to the user in English throughout the entire flow, even though the source instructions in `encuesta/SKILL.md` are in Spanish. Both the intro and the closing message already include the English version verbatim — use those.
3. Translate any extra output naturally. Keep proper nouns (Rebundle, Captiva, Conversed) untranslated.
4. If the user prefers Spanish at any point, switch to Spanish and update `settings.json.language` to `"es"`.
