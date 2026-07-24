<!-- RB-3BXZ-TX9K -->

# Ejercicio 1: Explorar y Preguntar

## Tiempo: 7 minutos

## Objetivo

Ver cómo Claude lee tus archivos sin que tú los abras, y descubrir que puedes preguntarle en lenguaje natural, imperfecto, humano.

## Instrucciones para el estudiante

### Paso 1: Identifica tu carpeta (1 min)

Escribe a Claude:

```
Soy [tu profesión]. ¿Qué archivos de ejemplo tengo disponibles?
```

Claude te dirá qué carpeta usar según tu rol.

### Paso 2: Mira el caos completo (2 min)

**NOTA para Claude:** Primero, intentar abrir la carpeta de assets del estudiante en el explorador de archivos (open en Mac, start en Windows, según preferences.json). Hacerlo silenciosamente, sin anunciarlo. Después, independientemente de si se abrió o no, mostrar el **path completo** de la carpeta y ejecutar un **file tree completo** (todos los archivos, sin resumir). El estudiante debe ver la dimensión real del desorden.

**NARRAR:**

```
Primero, veamos el desastre completo.
Esta es tu carpeta:
```

Claude muestra el path completo y ejecuta el file tree.

**NARRAR:**

```
Eso es lo que tienes. [X] archivos sin orden aparente.
Nombres inconsistentes, formatos mezclados, todo revuelto.

Si se te ha abierto la carpeta en tu explorador de archivos,
échale un vistazo. Si no, ahí tienes el path para abrirla.
```

Observa:
- ¿Cuántos archivos hay?
- ¿Qué tipos de archivos ves?
- ¿Hay algún orden aparente?

### Paso 3: Haz tu primera pregunta (2 min)

Pregunta algo que NO sabrías sin abrir los archivos uno por uno. Elige una de estas o inventa la tuya:

- "¿Cuántos correos hay y de qué años son?"
- "¿Cuántos clientes diferentes aparecen?"
- "¿Hay alguna factura pendiente?"
- "¿Cuál es el archivo más reciente?"

Lee la respuesta con atención.

**Después de la respuesta, Claude NARRA:**

```
Fíjate en lo que acaba de pasar: leí todos tus archivos y
te contesté en segundos. Analizar 80+ archivos a mano
te habría llevado mucho más.

Tú no me describiste nada. No me pasaste el contenido.
Ni siquiera te hizo falta decirme que los "correos" eran
archivos .txt con formato de email — entendí el contexto solo.

Me pediste la información en tu idioma y yo fui a buscarla.
```

### Paso 4: Haz una segunda pregunta (2 min)

**NOTA para Claude:** Si en el Paso 3 el estudiante ya hizo DOS o más preguntas por iniciativa propia (pasa con estudiantes curiosos), saltar este paso: ya cumplió el objetivo de preguntar varias veces. Reconócelo con naturalidad ("Veo que ya le has hecho varias preguntas, ¡perfecto!") y continúa directamente con la Reflexión.

Ahora algo distinto. Una pregunta más específica o más fuzzy — como te salga. No hace falta que sea perfecta.

Ejemplos:

- "¿Hay algún patrón temporal en estas comunicaciones?"
- "¿Qué cliente me ha escrito más correos?"
- "¿Hay algún archivo que mencione 'urgente' o similar?"
- "¿Hay facturas sin pagar?"

## Reflexión

```
┌─────────────────────────────────────────────────────────────────┐
│  Acabas de "hablar" con 80+ archivos en lenguaje natural.       │
│                                                                 │
│  Sin aprender comandos. Sin escribir prompts perfectos.         │
│  Claude entiende lo que le pides, aunque lo digas mal.          │
│                                                                 │
│  ¿Cuánto tiempo te habría tomado esto abriendo archivos?        │
└─────────────────────────────────────────────────────────────────┘
```

## Al completar este ejercicio

**Claude debe ejecutar automáticamente** (sin preguntar al estudiante):

```json
// Actualizar memory/learning/progress.json
{ "last_exercise_completed": 1 }
```

<!-- REPORTAR: exercise_completed, module=1, exercise=1 -->

## Para el profesor

- Caminar por el aula verificando que todos pueden explorar y hacen al menos 2 preguntas
- Animar preguntas imperfectas ("Claude entiende aunque la escribas mal")
- Compartir 1-2 respuestas sorprendentes con el grupo


![](https://classroom.rebundle.ai/api/canary/d60850a4-8d74-475f-b1d7-daf123e1e84f.gif?c=RB-3BXZ-TX9K)