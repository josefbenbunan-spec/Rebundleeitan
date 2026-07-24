<!-- RB-3BXZ-TX9K -->

# Ejercicio 2: Tus Primeros Skills - /ama y /wdyt

## Tiempo: 8 minutos

## Objetivo
Entender qué son los skills, crear dos que usarás el resto del curso y más allá.

---

## Instrucciones para el estudiante

**IMPORTANTE para Claude:** Presentar los pasos UNO A UNO. No mostrar todos los pasos de golpe.


### ¿Qué es un Skill?

**NARRAR:**
```
¿Recuerdas que para crear tu CLAUDE.md te hice preguntas con opciones?
Esa herramienta se llama AskUserQuestion.

Es una de las herramientas más poderosas de Claude Code:
en lugar de asumir, PREGUNTA. Te presenta opciones claras
y tú decides. Sin malentendidos.

Ahora vamos a crear SKILLS que usen este poder.
```

Un skill es una carpeta en `.claude/skills/` con un archivo `SKILL.md` dentro. Le da a Claude una habilidad nueva que puedes invocar con `/nombre`.

De hecho, este curso ya usa varios skills:
- `/peer-review` - muestra preguntas de discusión
- `/desbloquear` - avanza al siguiente módulo

Ahora vas a crear los tuyos.

**Claude debe usar AskUserQuestion:**
- Pregunta: "¿Listo para crear tu primer skill?"
- Opciones: "Sí, vamos", "Tengo una pregunta antes"

Si tiene pregunta, responderla y después continuar.

### Paso 1: Crear /ama (3 min)

**NARRAR:**
```
El primer skill se llama /ama (Ask Me Anything).

Cuando escribas /ama antes de cualquier tarea, Claude te entrevistará
en profundidad usando AskUserQuestion antes de empezar.

Cero suposiciones. Cero malentendidos.
Solo preguntas inteligentes hasta tener toda la información.
```

Claude crea automáticamente la carpeta y el archivo. **Importante:** los skills viven en `.claude/skills/` en la raíz del proyecto (la carpeta `rebundle/` que descomprimiste). Aunque Claude esté trabajando dentro de una subcarpeta, el skill debe guardarse SIEMPRE en la raíz; si no, queda inaccesible.

**Archivo:** `.claude/skills/ama/SKILL.md` (en la raíz del proyecto, normalmente la carpeta `rebundle/`)
```markdown
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
```

**Claude debe crear este archivo directamente, sin pedir permiso.**

Después de crearlo, Claude DEBE:
1. Mostrar el **path completo** del archivo (ej: `/Users/nombre/mi-proyecto/.claude/skills/ama/SKILL.md`)
2. Usar la herramienta **Read** para leer el archivo recién creado y mostrar el **contenido COMPLETO** al estudiante. NO resumir ni parafrasear. Mostrar el archivo tal cual, con frontmatter y todo.

**NARRAR (después de mostrar el contenido):**
```
Eso es todo. Un archivo de texto con instrucciones.
Ábrelo si quieres - es solo texto. Puedes editarlo
cuando quieras para mejorar cómo te entrevista Claude.
```

### Paso 2: Prueba /ama (1 min)

**NOTA para Claude:** Ofrecer 4 ejemplos concretos para que el estudiante elija. Los 4 deben ser diferentes entre sí:

1. **Relacionado con su proyecto:** Basado en el CLAUDE.md del proyecto que acaba de crear (ej: si su proyecto es "Sistema de propuestas" → `/ama quiero crear una propuesta para un cliente nuevo`)
2. **Basado en el historial del curso:** Algo que conecte con lo que el estudiante ha hecho en módulos anteriores - los archivos que organizó, los datos que analizó, los insights que encontró (ej: `/ama quiero crear un informe ejecutivo con los datos que analicé antes`)
3. **Relacionado con su día a día profesional:** Algo coherente con su rol y lo que mencionó en el energizante (ej: `/ama quiero organizar mejor mis reuniones semanales`)
4. **Algo diferente para abrir la mente:** Una tarea inesperada pero útil que muestre la versatilidad del skill (ej: `/ama quiero preparar una presentación de 5 minutos para mi equipo sobre cómo uso IA`)

Presentar los 4 ejemplos y dejar que el estudiante elija o escriba algo propio.

```
Vamos a probarlo. Elige uno de estos ejemplos o escribe el tuyo:
```

**NOTA para Claude:** Al ejecutar /ama, el estudiante verá la cadena completa:
1. Claude entrevista con AskUserQuestion (varias rondas)
2. Claude entra en plan mode y muestra el plan
3. El estudiante aprueba el plan
4. Claude ejecuta y muestra el resultado

Dejar que el flujo completo se ejecute. NO interrumpir después de la entrevista con "es una demo". El estudiante debe ver el resultado final.

**RECORDATORIO:** Si la ejecución genera archivos, SIEMPRE mostrar el path completo de cada archivo creado. El estudiante no sabe dónde se guardan si no se lo dices.

**Después de la ejecución, NARRAR:**
```
¿Viste lo que pasó?

1. /ama te entrevistó para entender exactamente qué necesitabas
2. Entró en Plan Mode para diseñar la solución
3. Tú aprobaste el plan
4. Ejecutó con toda la información

Eso es entrevista + plan + ejecución. Tres pasos que evitan
el 90% de los "no era eso lo que quería".
```

### Paso 3: Crear /wdyt (2 min)

**NARRAR:**
```
El segundo skill se llama /wdyt (What Do You Think).

Cuando tengas una decisión difícil, /wdyt te da múltiples
perspectivas ordenadas de mejor a peor, con argumentos
a favor y en contra de cada una.

Como tener un consejo asesor en tu terminal.
```

Claude crea automáticamente la carpeta y el archivo (también en la raíz del proyecto, no en una subcarpeta de `modulos/`):

**Archivo:** `.claude/skills/wdyt/SKILL.md` (en la raíz del proyecto, normalmente la carpeta `rebundle/`)
```markdown
---
name: wdyt
description: Análisis multi-perspectiva para decisiones y preguntas. Da 2-3 opciones ordenadas, una sección de abogado del diablo, y una recomendación personalizada.
---

Cuando se invoque /wdyt, proporciona un análisis estructurado multi-perspectiva de la pregunta o decisión. Responde directamente con el contexto disponible - solo haz preguntas si la pregunta es tan vaga que las perspectivas no tendrían sentido.

## Estructura de respuesta

### 1. Perspectivas (2-3, ordenadas por preferencia)
Presenta cada opción como una perspectiva numerada, la más fuerte primero. Adapta la profundidad a la complejidad:
- Preguntas simples: una o dos frases por opción.
- Decisiones complejas o de alto impacto: un párrafo completo por opción cubriendo razonamiento, implicaciones y consideraciones prácticas.
Cada perspectiva debe ser un enfoque genuinamente distinto, no variaciones menores de la misma idea.

### 2. Abogado del diablo
Una sección separada después de las perspectivas. Destaca riesgos, puntos ciegos o razones por las que podrías arrepentirte de una elección, especialmente de la opción mejor valorada. Omite esta sección para decisiones simples donde no hay nada relevante que advertir.

### 3. Recomendación
Termina con tu recomendación en dos partes:
- **Objetivamente:** Qué opción gana por sus méritos, y por qué.
- **Para ti específicamente:** Cómo el contexto del usuario (objetivos, carga de trabajo, tolerancia al riesgo, fortalezas, restricciones del CLAUDE.md) inclina la recomendación.

## Principios
- Lidera con la respuesta, no con el análisis. El usuario quiere tu opinión, no un ensayo equilibrado.
- Sé directo y con opinión. "Iría con la #1 porque..." es mejor que "Depende de tus prioridades..."
- Adapta la profundidad al impacto. No le des muchas vueltas a un nombre. Sí piensa bien una inversión de 60K.
- Si la conversación ya contiene contexto relevante (código, discusión previa, objetivos del proyecto), referéncialo. No analices en el vacío.
```

**Claude debe crear este archivo directamente, sin pedir permiso.**

Después de crearlo, Claude DEBE:
1. Mostrar el **path completo** del archivo (ej: `/Users/nombre/mi-proyecto/.claude/skills/wdyt/SKILL.md`)
2. Usar la herramienta **Read** para leer el archivo recién creado y mostrar el **contenido COMPLETO** al estudiante. NO resumir ni parafrasear. Mostrar el archivo tal cual, con frontmatter y todo.

**NARRAR (después de mostrar el contenido):**
```
Fíjate - es más largo que /ama pero sigue siendo solo texto.
Tiene una estructura clara: perspectivas, abogado del diablo,
recomendación. Todo eso lo puedes cambiar a tu gusto.
```

### Paso 4: Prueba /wdyt (1 min)

**NOTA para Claude:** Ofrecer 3 ejemplos concretos para que el estudiante elija. Los 3 deben ser diferentes entre sí:

1. **Decisión de su proyecto:** Basada en el CLAUDE.md del proyecto (ej: si es consultor → `/wdyt ¿debería especializarme en un solo sector o mantener variedad de clientes?`)
2. **Basada en el historial del curso:** Una decisión que conecte con lo que hizo en módulos anteriores - cómo organizó sus archivos, qué patrones encontró en los datos, etc. (ej: `/wdyt ¿debería automatizar el informe que hice antes o crear uno diferente para cada cliente?`)
3. **Decisión de su día a día profesional:** Algo que probablemente enfrente en su rol (ej: `/wdyt ¿debería dedicar más tiempo a captar clientes nuevos o fidelizar los actuales?`)
4. **Decisión más amplia o inesperada:** Para mostrar que sirve para cualquier tema (ej: `/wdyt ¿debería aprender a programar o centrarme en dominar herramientas de IA sin código?`)

Presentar los 4 ejemplos y dejar que el estudiante elija o escriba algo propio.

```
Pruébalo. Elige uno de estos ejemplos o escribe el tuyo:
```

**Observa cómo Claude te da perspectivas diferentes**, no solo una respuesta plana.

---

## Reflexión

```
┌─────────────────────────────────────────────────────────────────┐
│  Dos skills. Dos superpoderes.                                  │
│                                                                 │
│  /ama  → "No asumas, pregúntame"                                │
│  /wdyt → "Dame perspectivas, no respuestas planas"              │
│                                                                 │
│  Estos skills te van a acompañar mucho más allá de este         │
│  curso. Úsalos en cualquier proyecto.                           │
└─────────────────────────────────────────────────────────────────┘
```

---

## Al completar este ejercicio

**Claude debe ejecutar automáticamente** (sin preguntar al estudiante):

```json
// Actualizar memory/learning/progress.json
{ "last_exercise_completed": 2 }
```

<!-- REPORTAR: exercise_completed, module=3, exercise=2 -->

---

## Para el profesor

- El momento "wow" es cuando prueban /ama y ven las preguntas estructuradas
- Si alguien quiere crear su propio skill, dejarle (1-2 min extra)
- Estos skills se usarán en el resto del curso: recordar que existen


![](https://classroom.rebundle.ai/api/canary/95c38f26-eee8-4225-8e73-a87efee7a123.gif?c=RB-3BXZ-TX9K)