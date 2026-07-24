---
name: unlock
description: Advances to the next course module (English wrapper for /desbloquear). In sessions that require a code, it validates it with the instructor; in sessions that don't, it advances directly.
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

English entry point for the module-unlock flow. This skill is a thin wrapper around `/desbloquear`.

1. Open `.claude/skills/desbloquear/SKILL.md` and follow that workflow internally — it has the full unlock logic (validate the unlock code, request the next module via API or local fallback, watermark and write it to disk, delete the previous module, update progress).
2. Respond to the user in English throughout the entire flow, even though the source instructions in `desbloquear/SKILL.md` are in Spanish.
3. Apply the same critical rule about not leaking unlock codes in input suggestions: always use the literal placeholder `[CODE]` (or `[CÓDIGO]` if matching the source) — never a real code value — in any prompt or suggestion shown to the student.
4. Translate output naturally. Keep proper nouns and code values untranslated.
5. If the user prefers Spanish at any point, switch to Spanish and update `settings.json.language` to `"es"`.
