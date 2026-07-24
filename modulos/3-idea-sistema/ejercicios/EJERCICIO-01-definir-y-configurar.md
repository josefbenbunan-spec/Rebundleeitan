<!-- RB-3BXZ-TX9K -->

# Ejercicio 1: Tu Perfil Personal y Tu Proyecto

## Tiempo: 18 minutos

## Objetivo
Crear dos archivos CLAUDE.md: uno personal (sobre ti) y otro para tu proyecto. Entender por qué necesitas ambos.

---

## Instrucciones para el estudiante

**IMPORTANTE para Claude:** Presentar los pasos UNO A UNO. No mostrar todos los pasos de golpe.

---

### PARTE A: Tu Perfil Personal (~8 min)

**NARRAR:**
```
Antes de crear tu proyecto, vamos a hacer algo que te va a servir
para SIEMPRE. No solo para este curso.

Claude Code tiene dos tipos de memoria:

1. ~/.claude/CLAUDE.md → Tu perfil PERSONAL. Se carga SIEMPRE,
   en cualquier proyecto. Aquí guardas quién eres, cómo trabajas,
   qué prefieres.

2. mi-proyecto/CLAUDE.md → Las reglas de UN proyecto específico.
   Solo se carga cuando trabajas dentro de esa carpeta.

Vamos a empezar por ti.
```

#### Paso 1: Cuéntame sobre ti (3 min)

**Claude debe usar AskUserQuestion** con las siguientes preguntas (adaptar según lo que ya se sepa del onboarding):

1. "¿Cuál es tu nombre completo y cómo prefieres que te llame?" (texto libre)
2. "¿A qué te dedicas? Describe tu rol en 1 frase" (texto libre)
3. "¿En qué idioma prefieres trabajar con Claude?" - Opciones: "Español (España)", "Español (Latinoamérica)", "English", "Otro"
4. "¿Qué tono prefieres en las respuestas de Claude?" - Opciones: "Directo y conciso (sin rodeos)", "Detallado y explicativo", "Profesional y formal", "Cercano y casual"

#### Paso 2: Tu estilo de trabajo (2 min)

**Claude debe usar AskUserQuestion** con:

1. "¿Cómo prefieres recibir información?" - Opciones: "Bullets y listas (escaneable)", "Texto fluido (narrativo)", "Tablas y datos (estructurado)"
2. "¿Qué herramientas usas en tu día a día?" (texto libre, ej: "Excel, Gmail, Notion, Slack")
3. "¿Hay algo que Claude debería recordar SIEMPRE sobre ti?" (texto libre, ej: "tengo 3 clientes principales", "odio las reuniones largas", "soy visual")
4. "¿Qué cosas te molestan en una respuesta de IA?" - multiSelect: true - Opciones: "Respuestas demasiado largas", "Uso de emojis excesivo", "Lenguaje corporativo/buzzwords", "Que me explique cosas que ya sé"

#### Paso 3: Crear tu perfil global (2 min)

**NOTA para Claude:** Verificar si `~/.claude/CLAUDE.md` ya existe.

- **Si existe:** Leer el contenido actual, mostrar al estudiante qué hay, y proponer los cambios/adiciones basados en las respuestas. Usar AskUserQuestion: "Tu archivo ~/.claude/CLAUDE.md ya existe con este contenido: [resumen]. ¿Qué quieres hacer?" - Opciones: "Añadir mi perfil sin borrar lo existente", "Reemplazar todo con mi nuevo perfil", "Solo ver, no modificar por ahora"
- **Si no existe:** Crear directamente con toda la información recopilada.

El archivo debe tener esta estructura:
```markdown
# Sobre mí

- **Nombre:** [nombre]
- **Rol:** [rol]
- **Idioma:** [idioma]

## Preferencias de comunicación
- Tono: [tono elegido]
- Formato: [formato preferido]
- Evitar: [cosas que molestan]

## Herramientas que uso
- [lista de herramientas]

## Recordar siempre
- [lo que dijeron en "recordar siempre"]
```

**Después de crear/actualizar el archivo, Claude DEBE mostrar el path completo real.** Ejemplo: `/Users/nombre/.claude/CLAUDE.md` (`~/.claude/CLAUDE.md`).

#### Paso 4: Prueba rápida (1 min)

```
Tu perfil global está activo. A partir de ahora, en CUALQUIER
proyecto, Claude ya sabe quién eres y cómo te gusta trabajar.

Prueba: pregúntame algo y fíjate si respondo en tu tono preferido.
```

**Esperar a que pruebe. Celebrar si funciona.**

---

### PARTE B: Tu Proyecto (~10 min)

**NARRAR:**
```
Ahora que Claude te conoce a TI, vamos a enseñarle sobre
tu PROYECTO.

El archivo CLAUDE.md de tu proyecto es diferente:
aquí van las reglas específicas de lo que estás construyendo.
Clientes, procesos, formatos, lo que Claude necesita saber
para trabajar en ESTE proyecto concreto.

Este archivo va en la raíz de tu carpeta de proyecto:
mi-proyecto/CLAUDE.md
```

#### Paso 5: Nombra tu proyecto (1 min)

**Claude debe usar AskUserQuestion:**
- Pregunta: "¿Cómo quieres llamar a tu proyecto? Usa un nombre corto sin espacios (se usará como nombre de carpeta)"
- Opciones: adaptadas al proyecto elegido. Ejemplos:
  - Si eligió "Sistema de propuestas" → "mi-propuestas", "propuestas-pro", "asistente-propuestas"
  - Si eligió "Generador de contenido" → "mi-contenido", "content-generator", "posts-ai"
  - Si eligió otro → 3 sugerencias basadas en su descripción

Claude crea automáticamente la carpeta del proyecto y se mueve a ella:
```
mkdir [nombre-proyecto] && cd [nombre-proyecto]
```

**Claude debe guardar la ruta absoluta del proyecto** en `memory/learning/progress.json` añadiendo el campo `m3_project_path` con la ruta completa (ej: `/Users/doronv/code/rebundle/mi-propuestas`). Esto es necesario para que M4 pueda encontrar el proyecto.

#### Paso 6: Elige tu proyecto (2 min)

**Claude debe usar AskUserQuestion** adaptando las opciones al rol del estudiante (leer `role` de `memory/learning/preferences.json`):

**Si es Consultor:**
- Pregunta: "¿Qué proyecto quieres crear?"
- Opciones:
  - "Sistema de propuestas" (Genera propuestas comerciales a partir de notas de reunión)
  - "Asistente de cliente" (Resume emails de clientes y sugiere respuestas)
  - "Tracker de proyectos" (Organiza tareas y genera reportes semanales)

**Si es Emprendedor:**
- Pregunta: "¿Qué proyecto quieres crear?"
- Opciones:
  - "Generador de contenido" (Crea posts para redes desde tus ideas sueltas)
  - "Asistente de ventas" (Genera emails de seguimiento y propuestas)
  - "Analizador de competencia" (Resume y compara info de competidores)

**Si es Abogado:**
- Pregunta: "¿Qué proyecto quieres crear?"
- Opciones:
  - "Gestor de expedientes" (Organiza casos, plazos y documentación automáticamente)
  - "Asistente de contratos" (Genera borradores de contratos desde plantillas y notas)
  - "Generador de minutas" (Crea minutas de honorarios a partir de horas registradas)

**Si es Financiero:**
- Pregunta: "¿Qué proyecto quieres crear?"
- Opciones:
  - "Dashboard de KPIs" (Genera informes mensuales con métricas clave automáticamente)
  - "Asistente de cierre" (Guía paso a paso del cierre contable mensual)
  - "Analizador de desviaciones" (Compara real vs presupuesto y genera alertas)

**Si es Otro:**
- Pregunta: "¿Qué proyecto quieres crear?"
- Opciones:
  - "Asistente de emails" (Redacta respuestas profesionales rápidamente)
  - "Organizador de documentos" (Clasifica y resume archivos automáticamente)
  - "Generador de reportes" (Crea informes a partir de datos desordenados)

#### Paso 7: Define tu proyecto (3 min)

**Claude debe usar AskUserQuestion** con las 4 preguntas estratégicas:

1. "¿Qué PROBLEMA resuelve tu proyecto?" (texto libre)
2. "¿Para QUIÉN lo resuelve?" (texto libre)
3. "¿Cómo se solucionaba ANTES?" (texto libre)
4. "¿Por qué tu solución es MEJOR?" (texto libre)

**Después, Claude hace follow-up conversacional** (en chat, no AskUserQuestion):
- "Interesante. ¿Hay alguna regla que Claude deba seguir siempre en este proyecto? Por ejemplo, nunca inventar datos, siempre usar cierto formato..."
- "¿Alguna cosa que Claude NO debería hacer nunca en este contexto?"

#### Paso 8: Configura y aclara dudas (2 min)

**Claude debe usar AskUserQuestion** con la pregunta del tono Y 2-3 preguntas adicionales para aclarar dudas, todo en una sola llamada. Elegir las preguntas de clarificación que sean relevantes según el proyecto del estudiante:

1. "¿Qué tono debe usar Claude en este proyecto?" - Opciones: "Profesional y formal", "Cercano y directo (tuteo)", "Técnico y preciso", "Usar mi preferencia personal"
2. (si no quedó claro) "¿Los usuarios/clientes de tu proyecto son técnicos o no-técnicos?" - Opciones: "Técnicos", "No-técnicos", "Mixtos"
3. (si es relevante) "¿En qué formato prefieres los documentos generados?" - Opciones: "Markdown", "Bullets y listas", "Texto fluido", "Lo que mejor quede"
4. (si es especializado) "¿Hay vocabulario o términos de tu sector que Claude debería conocer?" (texto libre)
5. "¿Tienes algún ejemplo de un documento, email o entregable bien hecho que quieras usar como referencia?" - Opciones: "Sí, te lo pego ahora", "Sí, está en un archivo de mis documentos", "No, no tengo"

**Si responde sí a la pregunta 5:** Claude le pide que pegue o indique el archivo. Con ese ejemplo, Claude lo incluye como "few-shot example" en el CLAUDE.md (sección `## Ejemplos de referencia`) para que siempre genere en ese estilo.

**NOTA para Claude:** Usar UNA sola llamada a AskUserQuestion con la del tono + 2-3 preguntas relevantes (máximo 4 preguntas en total). No hacer todas, solo las que apliquen al proyecto. El objetivo es no asumir nada importante y crear un CLAUDE.md preciso desde el principio.

#### Paso 9: Crear el CLAUDE.md del proyecto (2 min)

Claude genera automáticamente `CLAUDE.md` en la raíz de la carpeta del proyecto con toda la información recopilada. **Después de crearlo, mostrar el path completo real** (ej: `/Users/nombre/mi-proyecto/CLAUDE.md`).

El archivo debe seguir esta estructura:
```markdown
# [Nombre del Proyecto]

## Contexto
[Qué es, para quién, qué problema resuelve]

## Reglas de Comportamiento
[Tono, idioma, formatos]

## Información Clave
[Datos importantes del proyecto]

## Lo que NO debo hacer
[Prohibiciones específicas]
```

#### Paso 10: Prueba y ajusta (2 min)

```
Tu CLAUDE.md de proyecto está activo. Pruébalo:
hazme una pregunta sobre tu proyecto y observa
si respondo según las reglas que definiste.
```

Si algo no encaja, pedir ajustes en chat:
- "Cambia el tono a más formal"
- "Añade que siempre debo incluir precios en euros"
- "Quita la regla sobre jerga técnica, mis clientes son técnicos"

---

## Los dos CLAUDE.md en acción

```
┌─────────────────────────────────────────────────────────────────┐
│                                                                 │
│  ~/.claude/CLAUDE.md          mi-proyecto/CLAUDE.md             │
│  ═══════════════════          ═════════════════════             │
│                                                                 │
│  Sobre TI                     Sobre TU PROYECTO                 │
│  • Tu nombre y rol            • Qué problema resuelve           │
│  • Tu estilo de trabajo       • Reglas específicas              │
│  • Tus preferencias           • Información clave               │
│  • Tus herramientas           • Lo que NO hacer                 │
│                                                                 │
│  Se carga SIEMPRE             Se carga en ESTE proyecto         │
│                                                                 │
│  Escribes una vez →           Escribes una vez →                │
│  funciona en todos            funciona en este proyecto          │
│  tus proyectos                                                  │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

## Reflexión

```
┌─────────────────────────────────────────────────────────────────┐
│  En pocos minutos le enseñaste a Claude dos cosas:              │
│                                                                 │
│  1. Quién eres (para siempre)                                   │
│  2. En qué estás trabajando (para este proyecto)                │
│                                                                 │
│  Antes: "Recuerda que soy consultor, prefiero bullets,          │
│          mi cliente principal es Alpha..."                       │
│  Ahora: Claude ya lo sabe. Siempre. Automáticamente.           │
│                                                                 │
│  Eso es Context Engineering aplicado a TU trabajo.              │
└─────────────────────────────────────────────────────────────────┘
```

## Al completar este ejercicio

**Claude debe ejecutar automáticamente** (sin preguntar al estudiante):

```json
// Actualizar memory/learning/progress.json
{ "last_exercise_completed": 1 }
```

<!-- REPORTAR: exercise_completed, module=3, exercise=1 -->

## Para el profesor

- Este ejercicio tiene dos momentos "wow": el perfil personal y el proyecto
- El perfil personal es especialmente impactante porque persiste después del curso
- Verificar que todos tienen ambos archivos creados
- Si ~/.claude/CLAUDE.md ya existe (del setup del curso), guiar al estudiante para añadir su perfil sin borrar la config existente
- Enfatizar que pueden seguir mejorando ambos archivos después


![](https://classroom.rebundle.ai/api/canary/13f80f3e-9c89-4790-a83b-4a618cd6eef2.gif?c=RB-3BXZ-TX9K)