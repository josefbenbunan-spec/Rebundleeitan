<!-- RB-3BXZ-TX9K -->

# Ejercicio 3: Crea Tus Propios Skills

## Tiempo: 8 minutos

## Objetivo
Crear uno o más skills personalizados para tu proyecto o tu día a día.

## Instrucciones para el estudiante

**IMPORTANTE para Claude:** Presentar los pasos UNO A UNO. No mostrar todos los pasos de golpe.

### El concepto

Un Skill es una carpeta en `.claude/skills/` con un archivo `SKILL.md` dentro
que le da a Claude una HABILIDAD nueva.

Los skills funcionan de dos formas:
1. **Manualmente:** Los invocas tú con `/nombre`, como /ama o /wdyt que acabas de crear.
2. **Automáticamente (la magia):** Claude lee la descripción de todos los skills disponibles y los usa cuando detecta que son relevantes para lo que le estás pidiendo. Sin que tú hagas nada.

Antes existían "comandos" (en `.claude/commands/`) que solo se podían invocar manualmente. Los skills los reemplazaron porque pueden hacer lo mismo y más: invocación manual + activación automática.

### Paso 1: Elige qué automatizar (2 min)

**NOTA para Claude:** Ofrecer 4 opciones variadas. Leer el CLAUDE.md del proyecto y preferences.json para adaptar. NO ofrecer opciones genéricas.

**Claude debe usar AskUserQuestion:**
- Pregunta: "¿Qué skill quieres crear?"
- Opciones (adaptar al contexto del estudiante):
  1. **Algo de tu proyecto:** Basado en el CLAUDE.md del proyecto (ej: "Generar borrador de propuesta", "Resumen de reunión con cliente", "Checklist de entregables")
  2. **Basado en lo que hicimos hoy:** Algo que conecte con el historial del curso - los archivos organizados, datos analizados, insights encontrados (ej: "Automatizar el informe que hice antes", "Organizar archivos nuevos igual que en M1")
  3. **Un consejo asesor virtual (/board):** Define tu 'board' de asesores y Claude simula sus perspectivas sobre cualquier tema
  4. **Algo de tu vida profesional:** Una tarea real de tu día a día que te gustaría automatizar (ej: "Preparar agenda semanal", "Redactar emails de seguimiento", "Resumir reuniones")

### Paso 2: Personaliza y crea (3 min)

**Claude debe usar AskUserQuestion:**
1. "¿Qué nombre quieres para el skill? (ej: /informe, /resumen, /board)" (texto libre)
2. "¿Qué debe hacer exactamente? Describe brevemente" (texto libre)

**OBLIGATORIO:** Después de estas dos respuestas, Claude DEBE seguir preguntando con AskUserQuestion para llegar al fondo de la necesidad. Mínimo 1-2 rondas más. Ejemplos de preguntas de seguimiento:
- "¿Cuál sería un ejemplo concreto de cuándo lo usarías?"
- "¿Qué información necesita como input?"
- "¿En qué formato quieres el resultado?"
- "¿Hay algo que NO debería hacer nunca?"

**IMPORTANTE:** Apuntar a una prueba de concepto funcional, no al skill perfecto. Mejor algo simple que funcione hoy que algo ambicioso que no se puede probar ahora. Si el estudiante pide algo muy grande, sugerir: "Empecemos con la parte más útil y después lo ampliamos."

Con estas respuestas, Claude crea el Skill automáticamente en `.claude/skills/[nombre]/SKILL.md`, **siempre en la raíz del proyecto** (la carpeta `rebundle/` del unzip — nunca en subcarpetas de `modulos/`, o el skill quedará inaccesible). **Después de crearlo, mostrar el path completo real** (ej: `/Users/nombre/rebundle/.claude/skills/informe/SKILL.md`).

### Paso 3: ¡Pruébalo! (1 min)

Escribe `/nombre-del-skill` para probarlo.

¿Funcionó? ¿Qué ajustarías?

### Paso 4: ¿Quieres crear otro? (2 min)

**Claude debe usar AskUserQuestion:**
- Pregunta: "¿Quieres crear otro skill?"
- Opciones: "Sí, tengo otra idea", "Sí, ayúdame a pensar una", "No, sigamos"

Si elige sí: volver al Paso 1 y repetir el proceso.
Si elige "ayúdame a pensar": Claude sugiere ideas basadas en el rol y lo que ya tiene creado.
Si elige no: continuar.

### Cómo funcionan los Skills

Los Skills funcionan de dos formas:

1. **Automáticamente (la magia):** Claude lee todos los Skills disponibles y los aplica cuando detecta que son relevantes. No necesitas hacer nada. Si tienes un skill de "informe semanal" y le pides "hazme un resumen de esta semana", Claude lo usará automáticamente.

2. **Manualmente:** También puedes invocarlos escribiendo `/nombre-del-skill`.

## Anatomía de un Skill

Cada skill es una carpeta con un archivo `SKILL.md` dentro:

```
.claude/skills/
├── ama/
│   └── SKILL.md
├── wdyt/
│   └── SKILL.md
└── informe-semanal/
    └── SKILL.md
```

El archivo `SKILL.md` tiene esta estructura:

```markdown
---
name: [nombre-del-skill]
description: [Una línea explicando qué hace. Sé específico para que Claude sepa cuándo usarlo]
---

[Instrucciones detalladas que Claude debe seguir]

Si el skill acepta parámetros, usar $ARGUMENTS:
El tema es: $ARGUMENTS
```

### La clave: el frontmatter

¿Recuerdas el bloque `---` al inicio del archivo?

```markdown
---
name: informe-semanal
description: Genera un informe resumen de la semana con temas principales y tareas pendientes
---
```

El `name` identifica el skill y el `description` es lo ÚNICO que Claude carga al iniciar sesión. No lee el archivo entero de cada skill, solo la descripción. Con esa frase decide cuándo usar cada skill automáticamente.

Por eso es importante que la descripción sea clara y específica. Si escribes "hace cosas", Claude nunca sabrá cuándo usarlo. Si escribes "genera un informe resumen de la semana", Claude lo usará cada vez que le pidas algo relacionado con informes semanales.

## Reflexión

```
┌─────────────────────────────────────────────────────────────────┐
│  Estás construyendo un sistema personalizado para               │
│  TU vida y TU empresa:                                          │
│                                                                 │
│  • Automatizando procesos que antes hacías a mano               │
│  • Creando contexto que Claude recuerda por ti                  │
│  • Cada skill es una pieza de TU flujo de trabajo               │
│                                                                 │
│  No estás "usando IA". Estás creando un sistema                 │
│  que trabaja CONTIGO, adaptado a tus necesidades.               │
└─────────────────────────────────────────────────────────────────┘
```

## Al completar este ejercicio

**Claude debe ejecutar automáticamente** (sin preguntar al estudiante):

```json
// Actualizar memory/learning/progress.json
{ "last_exercise_completed": 3 }
```

<!-- REPORTAR: exercise_completed, module=3, exercise=3 -->

## Para el profesor

- TODOS deben tener al menos 1 Skill funcionando
- Si alguien se atasca, sugerir /board o /resumen-dia como punto de partida
- Animar a crear más de uno si les sobra tiempo
- Celebrar cuando funcione: "¡Creaste tu primer skill!"


![](https://classroom.rebundle.ai/api/canary/3d4667df-6359-4f97-a39e-859a831a9123.gif?c=RB-3BXZ-TX9K)