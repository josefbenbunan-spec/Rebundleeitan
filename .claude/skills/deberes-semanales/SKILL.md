---
name: deberes-semanales
description: Busca notificaciones de Classroom en Gmail de la última semana y envía un resumen de deberes por email
---

Genera y envía el resumen semanal de deberes de Eitan, basado en las notificaciones que Google Classroom manda por email.

## Requisito previo — comprobar la cuenta

Antes de nada, confirma que la cuenta de Gmail conectada a esta sesión es la cuenta donde llegan las notificaciones de Classroom de Eitan (`eitanbenbunan@gmail.com`). Si la cuenta conectada es otra (por ejemplo `eva.corcia@gmail.com`), PARA aquí, avisa explícitamente de la discrepancia y no continúes. Nunca simules ni inventes datos de Classroom para compensar la falta de acceso.

## Pasos

1. Busca en Gmail (`mcp__Gmail__search_threads`) los correos de los últimos 7 días del remitente `classroom.google.com` (o `no-reply@classroom.google.com`).
2. De cada notificación, extrae: clase, nombre de la tarea, fecha de entrega.
3. Agrupa los resultados por clase.
4. Si una clase no aparece en ninguna notificación de la semana, inclúyela igualmente en el resumen con `sin deberes esta semana` — nunca la omitas y nunca inventes una tarea para rellenar.
5. Redacta el email en bullets, tono técnico y preciso (ver `deberes-semanales/CLAUDE.md` para las reglas completas del proyecto):
   ```
   Asunto: Deberes de la semana — [fecha]

   - [Clase]: [tarea] (entrega: [fecha])
   - [Clase]: sin deberes esta semana
   ...
   ```
6. Envía el email (o guárdalo como borrador con `mcp__Gmail__create_draft` si no hay confirmación de envío automático activo).

## Limitación conocida

Este skill requiere que la sesión de Claude Code esté conectada a la cuenta de Gmail real del estudiante. En la sesión donde se diseñó este skill, la cuenta conectada era distinta (`eva.corcia@gmail.com`), así que no se pudo probar de extremo a extremo — ver `briefs/2026-07-24-deberes-semanales.md`.
