<!-- RB-3BXZ-TX9K -->

# Ejercicio 4: Tus Skills al Descubierto

## Tiempo: 5 minutos

## Objetivo
Descubrir dónde están tus skills, entender que son portables, y aprender a compartirlos.

---

## Instrucciones para el estudiante

**IMPORTANTE para Claude:** Presentar los pasos UNO A UNO. No mostrar todos los pasos de golpe.

### Paso 1: Explora tus skills (1 min)

**NARRAR:**
```
Ya tienes varios skills creados. Vamos a ver dónde están
y qué puedes hacer con ellos.

Escribe / (solo la barra, sin nada más).
```

Esperar a que el estudiante lo pruebe. Dejar que explore el menú.

**NARRAR:**
```
¿Ves? Ahí están todos: /ama, /wdyt, y los que acabas de crear,
junto con los del curso y algunos que vienen de serie con Claude Code.

Ese menú se actualiza solo. Cada skill que crees
aparecerá ahí automáticamente.

¿Listo para ver dónde viven estos skills?
```

Esperar respuesta del estudiante antes de continuar.

### Paso 2: Dónde viven los skills (2 min)

**NOTA para Claude:** En el diagrama de abajo, usar el nombre REAL de la carpeta del proyecto actual (leer con `pwd` o del contexto de la sesión). NO usar "mi-proyecto" como placeholder. Los paths de `~` deben mostrar el path completo real + abreviación.

**NARRAR:**
```
Los skills pueden vivir en TRES sitios diferentes:
```

Claude debe mostrar este diagrama **adaptado al proyecto real del estudiante**:

```
┌─────────────────────────────────────────────────────────────────┐
│                                                                 │
│  1. ESTE PROYECTO (donde estás ahora)                           │
│     [NOMBRE-CARPETA-REAL]/.claude/skills/                       │
│     ├── ama/SKILL.md                                            │
│     ├── wdyt/SKILL.md                                           │
│     └── [tus otros skills]/SKILL.md                             │
│     → Solo funcionan cuando trabajas en ESTA carpeta             │
│                                                                 │
│  2. TU PERFIL PERSONAL                                          │
│     [PATH-REAL]/.claude/skills/ (~/.claude/skills/)             │
│     └── (vacío por ahora)                                       │
│     → Funcionan en TODOS tus proyectos, siempre                 │
│                                                                 │
│  3. CARPETA COMPARTIDA (Google Drive, OneDrive, Dropbox...)     │
│     /empresa/shared/.claude/skills/                             │
│     └── skills que comparte tu equipo                           │
│     → Cualquiera que abra Claude Code desde esa carpeta          │
│       tendrá acceso a esos skills automáticamente               │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

**NARRAR:**
```
Veamos qué skills tienes ahora mismo en este proyecto:
```

**NOTA para Claude:** Ejecutar `ls .claude/skills/` y luego IMPRIMIR el resultado al estudiante directamente en el chat (los resultados de bash no se muestran por defecto). Filtrar y mostrar SOLO los skills creados por el estudiante (ama, wdyt, y los que haya creado en el ejercicio 3). NO listar los skills que venían con el curso (desbloquear, diploma, modulo, peer-review, viz).

**NARRAR:**
```
Ahora mismo, tus skills están en la opción 1:
dentro de la carpeta de este proyecto.

Eso significa que si mañana abres Claude Code
en otra carpeta, NO los tendrás disponibles.

¿La solución? Moverlos a tu perfil personal.
```

### Paso 3: ¿Los quieres en todos tus proyectos? (1 min)

**Claude debe usar AskUserQuestion:**
- Pregunta: "¿Quieres copiar alguno de tus skills a tu perfil personal para usarlos en TODOS tus proyectos?"
- Opciones: "Sí, déjame elegir cuáles", "No, los dejo solo en este proyecto"

**Si elige sí:** Claude debe usar AskUserQuestion con **multiSelect: true**:
- Pregunta: "¿Cuáles quieres copiar a tu perfil personal?"
- Opciones: una por cada skill que el estudiante haya creado (ej: "/ama", "/wdyt", "/informe-semanal", etc.). Listar SOLO los skills creados por el estudiante, no los del curso.

Claude copia los skills seleccionados a `~/.claude/skills/`. Confirmar mostrando el resultado al estudiante.

**NARRAR (después de copiar):**
```
Listo. Ahora esos skills están en tu perfil personal.
Da igual en qué proyecto trabajes mañana,
estarán siempre disponibles.
```

**Si elige no:** Perfecto, seguir adelante.

**En ambos casos, NARRAR:**
```
Y recuerda: en cualquier momento puedes decirle a Claude
"copia el skill /ama a mi perfil personal" o
"mueve mis skills a ~/.claude/skills/"
y Claude lo hará por ti. No necesitas recordar comandos.
```

**NARRAR:**
```
Mira cómo queda todo junto:
```

Claude debe mostrar este diagrama **con paths reales del estudiante**:

```
┌─────────────────────────────────────────────────────────────────┐
│                                                                 │
│  TU PERFIL PERSONAL (~/.claude/)                                │
│  Se carga SIEMPRE, en cualquier proyecto                        │
│                                                                 │
│  ~/.claude/                                                     │
│  ├── CLAUDE.md            ← Quién eres, cómo trabajas           │
│  │                          (lo creaste en el ejercicio 1)      │
│  └── skills/                                                    │
│      ├── ama/SKILL.md     ← Disponible en todos tus proyectos  │
│      └── wdyt/SKILL.md    ← Disponible en todos tus proyectos  │
│                                                                 │
│  TU PROYECTO ([NOMBRE-REAL]/)                                   │
│  Se carga solo cuando trabajas aquí                             │
│                                                                 │
│  [NOMBRE-REAL]/                                                 │
│  ├── CLAUDE.md            ← Reglas de ESTE proyecto             │
│  │                          (lo creaste en el ejercicio 1)      │
│  └── .claude/skills/                                            │
│      └── [skill-proyecto]/SKILL.md  ← Solo para este proyecto   │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

**NARRAR:**
```
¿Ves? Tu CLAUDE.md personal y tus skills personales
viven juntos en ~/.claude/. Se cargan siempre.

Tu CLAUDE.md de proyecto y los skills de proyecto
viven dentro de la carpeta del proyecto. Solo se cargan aquí.

Y todo esto son archivos de texto que puedes mover,
copiar o actualizar. Solo dile a Claude lo que necesitas:
"actualiza mi perfil personal", "mueve este skill a global",
"añade esta regla a mi CLAUDE.md de proyecto"...
Claude se encarga.
```

### Paso 4: Compartir con tu equipo (1 min)

**NARRAR:**
```
Y una cosa más: puedes compartir TODO esto con tu equipo.

No solo skills. También el CLAUDE.md.

Imagina: un CLAUDE.md compartido con las reglas de tu empresa,
el tono de comunicación, los procesos internos, la terminología...
y skills compartidos para las tareas comunes del equipo.

Cualquiera que abra Claude Code desde esa carpeta compartida
(Google Drive, OneDrive, Dropbox...) tendrá acceso a todo
automáticamente. O pueden copiarlo a su perfil personal.

Tu equipo entero con el mismo contexto, las mismas mejores
prácticas, los mismos flujos. Solo compartiendo archivos de texto.

Esto es Context Engineering llevado al equipo:
no solo TÚ le das contexto a Claude,
sino que toda tu EMPRESA le da contexto.
```

**NARRAR:**
```
Por último: existe /skill-creator, un skill que te ayuda
a crear otros skills. Solo descríbele lo que quieres
y Claude se encarga del resto.

Y hay toda una comunidad creando skills que puedes instalar.
Eso lo veremos más adelante en el Módulo 5.
```

## Al completar este ejercicio

**Claude debe ejecutar automáticamente** (sin preguntar al estudiante):

```json
// Actualizar memory/learning/progress.json
{ "last_exercise_completed": 4 }
```

<!-- REPORTAR: exercise_completed, module=3, exercise=4 -->

## Para el profesor

- Este es un momento de "aha" importante: los skills son solo archivos
- El diagrama de los 3 niveles es clave para que entiendan la portabilidad
- La mención de CLAUDE.md compartido + Context Engineering es el cierre conceptual del módulo
- Si alguien pregunta por seguridad: los skills no tienen acceso especial, solo son instrucciones de texto
- La copia a ~/.claude/skills/ es opcional pero recomendable para /ama y /wdyt


![](https://classroom.rebundle.ai/api/canary/2144f56d-6760-435f-bdb8-c310563ccde8.gif?c=RB-3BXZ-TX9K)