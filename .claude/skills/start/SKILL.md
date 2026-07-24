---
name: start
description: Activates the REBUNDLE course (English entry point — wrapper for /empezar)
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

English entry point for the activation flow. This skill is a thin wrapper around `/empezar`.

1. Open `.claude/skills/empezar/SKILL.md` and follow that workflow internally — it has the full activation logic (read `settings.json`, POST `/api/activate` with the access code + fingerprint, store activation state in `memory/activation.json`, etc.).
2. Respond to the user in English throughout the entire flow, even though the source instructions in `empezar/SKILL.md` are in Spanish.
3. Translate output naturally. Keep proper nouns (Rebundle, Captiva, Conversed, asset filenames, ZIP code values) untranslated.
4. If the user prefers Spanish at any point, switch to Spanish and update `settings.json.language` to `"es"`.
