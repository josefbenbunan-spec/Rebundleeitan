# Brief: Sistema de resumen semanal de deberes (Classroom → Email)
Fecha: 2026-07-24
Plan: N/A (se creará con EnterPlanMode a continuación)

## Contexto
Eitan quiere un email automático cada viernes con el resumen de los deberes mandados esa semana en Google Classroom, para no tener que entrar clase por clase a revisar manualmente.

## Resumen del AMA

**Fuente de datos**
- No hay conector directo de Google Classroom disponible en esta sesión.
- Alternativa acordada: buscar en Gmail las notificaciones que Classroom envía automáticamente cada vez que se publica una tarea (remitente classroom.google.com).

**Cuenta de Gmail — limitación real**
- La cuenta conectada a esta sesión es `eva.corcia@gmail.com`.
- Eitan confirmó que sus notificaciones de Classroom llegan a `eitanbenbunan@gmail.com`, una cuenta DISTINTA.
- Con las herramientas disponibles ahora mismo no se puede leer ni enviar correo desde `eitanbenbunan@gmail.com`.
- Decisión: construir el sistema completo (skill + lógica + trigger semanal) para que funcione en cuanto la cuenta correcta esté conectada a una sesión de Claude Code. No se puede ejecutar de extremo a extremo hoy.

**Formato y reglas**
- Un bullet por deber.
- Tono técnico y preciso.
- Si una clase no tiene deberes esa semana, decirlo explícitamente ("Matemáticas: sin deberes esta semana") — nunca omitir la clase ni inventar contenido. Esta regla ya vive en `deberes-semanales/CLAUDE.md`.

**Envío**
- Automático (sin revisión previa antes de enviar).
- Cada viernes a las 17:00.

## Notas adicionales
- Este proyecto vive en `/home/user/Rebundleeitan/deberes-semanales/`.
- Riesgo principal: si Classroom deja de mandar notificación por email para algún tipo de tarea (algunos centros lo desactivan), esa tarea no aparecería en el resumen — no hay forma de detectarlo sin acceso directo a la API de Classroom.

## Siguiente paso
Diseñar (EnterPlanMode) el skill `/deberes-semanales` y el trigger semanal que lo dispare cada viernes a las 17:00, dejando documentada la limitación de cuenta de Gmail como prerequisito para la ejecución real.
