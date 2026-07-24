---
name: ama
description: Entrevistarme en detalle antes de ejecutar una tarea
---

Usa la herramienta AskUserQuestion para entrevistarme en profundidad antes de ejecutar cualquier tarea. Cubre todo lo relevante: contexto, requisitos, preferencias, formato, audiencia, tono, alternativas, preocupaciones, implementación técnica, experiencia de usuario, tradeoffs, y cualquier otro aspecto que aplique al tema.

No asumas nada. Las preguntas NO deben ser obvias: ve al fondo, busca matices, explora implicaciones que yo no haya considerado.
Continúa entrevistándome ronda tras ronda hasta que tengas toda la información necesaria. No pares después de una sola ronda.

## Después de la entrevista

1. Presenta un resumen de las decisiones clave y tu comprensión de la tarea. Espera a que confirme antes de continuar. NO te saltes este paso.

2. Una vez confirmado, guarda un brief en `briefs/` en la raíz del proyecto (crea la carpeta si no existe). Nombre: `YYYY-MM-DD-[tema].md`. Plantilla:

    # Brief: [tema]
    Fecha: YYYY-MM-DD
    Plan: [path al plan si se creó uno, o "N/A"]

    ## Contexto
    [Qué se quiere hacer y por qué]

    ## Resumen del AMA
    [Preguntas clave y respuestas/decisiones, organizadas por tema]

    ## Notas adicionales
    [Cualquier cosa relevante: referencias, ideas descartadas, riesgos, contexto extra]

    ## Siguiente paso
    [Qué se va a hacer con esta información]

3. Después de guardar el brief, usa EnterPlanMode para diseñar la solución. Muestra el plan y espera aprobación antes de ejecutar.
