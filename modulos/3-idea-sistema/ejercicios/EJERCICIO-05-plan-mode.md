<!-- RB-3BXZ-TX9K -->

# Ejercicio 5: Plan Mode - Claude Piensa Antes de Actuar

## Tiempo: 8 minutos

## Objetivo
Entender y usar Plan Mode para que Claude planifique antes de ejecutar.

---

## Instrucciones para el estudiante

**IMPORTANTE para Claude:** Presentar los pasos UNO A UNO. No mostrar todos los pasos de golpe.

**INSTRUCCIÓN CRÍTICA para Claude:** En este ejercicio DEBES usar la herramienta EnterPlanMode cuando se indique. NO simular plan mode escribiendo "voy a planificar" o "mi plan es...". DEBES usar la herramienta real EnterPlanMode. El estudiante debe ver el cambio de modo en su interfaz. Si no usas EnterPlanMode, el ejercicio no tiene sentido.

### ¿Qué es Plan Mode?

**NARRAR:**
```
No es solo "planificar". Es algo mucho más potente:

1. Claude te PREGUNTA antes de asumir.
   No da por hecho que sabe lo que quieres.
   Te hace preguntas que tú no habías pensado,
   te da perspectivas que no imaginabas.

2. El plan es TU momento de ser el "human in the loop".
   No le delegas todo a la IA y cruzas los dedos.
   Tú das feedback, iteras, y construyes el plan
   EN CONJUNTO con Claude. Tú diriges, Claude propone.

3. No tienes que esperar a que termine para darte cuenta
   de que no era lo que querías. El plan es el momento
   de corregir el rumbo ANTES de que se ejecute nada.

Y lo más importante: Plan Mode no es solo para cosas técnicas.
Sirve para pensar, desarrollar estrategias, preparar
presentaciones, diseñar procesos, tomar decisiones...

Cualquier tarea donde quieras pensar bien antes de actuar.

¿Quieres probarlo?
```

Esperar respuesta del estudiante antes de continuar.

### Paso 1: Activa Plan Mode (1 min)

**NARRAR:**
```
Hay varias formas de activar Plan Mode:

En la terminal (Claude Code en CLI):
  - Pulsa Shift+Tab (cicla entre modos hasta ver "plan mode" abajo)

En la Desktop App de Claude:
  - Abajo a la izquierda verás el selector de modo (donde dice "accept edits")
  - Haz clic ahí y selecciona "Plan mode"

Actívalo ahora. Cuando lo veas activo, elige una de estas
opciones y escríbela (o inventa la tuya):
```

**NOTA para Claude:** Generar 3-4 ejemplos personalizados para que el estudiante elija qué escribir en plan mode. Los ejemplos deben ser diferentes entre sí:

1. **Basado en el historial del curso:** Algo que conecte con lo que hizo en M1 y M2 (ej: "Planifica un sistema para que la organización de archivos que hice se actualice cada semana con archivos nuevos")
2. **Basado en su proyecto/rol:** Leer el CLAUDE.md del proyecto y preferences.json (ej: si es consultor → "Planifica cómo automatizar el onboarding de nuevos clientes en mi consultoría")
3. **Un problema real interesante:** Algo de su vida profesional que genere impacto (ej: "Diseña un proceso para que mi equipo deje de perder información en emails y todo quede organizado")
4. **Algo ambicioso que inspire:** Para mostrar el potencial de plan mode (ej: "Planifica cómo podría lanzar un producto digital en 30 días usando Claude Code")

Mostrar los ejemplos al estudiante y decirle:

```
Elige uno, modifícalo, o escribe tu propia idea.
Claude te hará preguntas para entender bien qué necesitas
y después te propondrá un plan.
```

**NOTA para Claude:** A partir de aquí, el estudiante está en plan mode. Claude DEBE usar AskUserQuestion para hacer preguntas y entender bien la tarea antes de proponer el plan. AUQ funciona en plan mode y es OBLIGATORIO usarlo aquí - las opciones interactivas guían mejor al estudiante que el texto libre. Mínimo 2 rondas de AUQ antes de proponer el plan.

### Paso 2: Observa el plan (3 min)

El estudiante interactúa con Claude en plan mode. Claude hace preguntas, propone un plan, el estudiante aprueba o pide cambios.

**NARRAR (ANTES de que apruebe el plan):**
```
Cuando veas el plan, tienes tres opciones:
- Aprobarlo tal cual
- Pedir cambios ("añade esto", "quita aquello", "cambia el enfoque")
- Rechazarlo y proponer algo diferente

El plan es una conversación entre tú y Claude,
no un resultado final. Itera hasta que te convenza.
```

El estudiante aprueba (o itera). Claude ejecuta.

**Si la ejecución del plan genera archivos nuevos**, Claude DEBE mostrar el path completo de cada archivo creado.

### Paso 3: Reflexión (2 min)

**NARRAR (DESPUÉS de que el estudiante apruebe y Claude ejecute):**
```
¿Viste lo que pasó?

1. Tú activaste Plan Mode
2. Claude te hizo preguntas para entender tu necesidad
3. Propuso un plan con pasos concretos
4. No ejecutó NADA hasta que tú dijiste "sí"
5. Tú tuviste el control en todo momento

Eso es ser el "human in the loop":
tú diriges, Claude propone, y juntos llegáis
a un mejor resultado que cada uno por separado.

Sin Plan Mode: le pides algo, ejecuta, y si no era lo que
querías tienes que empezar de nuevo.

Con Plan Mode: piensa contigo, te pregunta, propone,
tú corriges, y solo entonces ejecuta. Cero sorpresas.

Y no es solo para tareas técnicas. Úsalo para:
- Preparar una presentación importante
- Diseñar un proceso de trabajo
- Desarrollar una estrategia de negocio
- Pensar en cómo resolver un problema complejo
- Planificar tu próxima semana o trimestre

Cualquier situación donde quieras pensar bien antes de actuar.

Regla simple:
Tarea simple → Modo normal.
Tarea donde te importa el resultado → Plan Mode.
```

## Reflexión

```
┌─────────────────────────────────────────────────────────────────┐
│  Plan Mode no es solo planificar. Es PENSAR EN EQUIPO.          │
│                                                                 │
│  Tú aportas el contexto, la visión, las decisiones.             │
│  Claude aporta el análisis, las perspectivas, la ejecución.     │
│                                                                 │
│  Juntos hacéis un mejor trabajo que cada uno por separado.       │
│                                                                 │
│  Ya lo viste con /ama. Ahora sabes activarlo tú mismo.          │
└─────────────────────────────────────────────────────────────────┘
```

## Al completar este ejercicio

**Claude debe ejecutar automáticamente** (sin preguntar al estudiante):

```json
// Actualizar memory/learning/progress.json
{ "last_exercise_completed": 5 }
```

<!-- REPORTAR: exercise_completed, module=3, exercise=5 -->

Después, preguntar: "¿Listo para el peer review?"

## Para el profesor

- Este ejercicio es muy visual: los estudiantes VEN a Claude pensar
- Si el plan es muy largo, simplificar la tarea
- La opción 2 (problema real) suele ser la más impactante
- Enfatizar: "Esto es lo que hace Claude Code diferente de ChatGPT"
- Si alguien dice "pero esto es como ChatGPT": la diferencia es que Plan Mode ejecuta después, no solo habla


![](https://classroom.rebundle.ai/api/canary/68b29480-7520-4bb9-a00f-95c99a9979b0.gif?c=RB-3BXZ-TX9K)