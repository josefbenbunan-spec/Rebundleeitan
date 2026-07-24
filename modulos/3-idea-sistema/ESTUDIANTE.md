<!-- RB-3BXZ-TX9K -->

<!-- IDIOMA: respeta el idioma de la conversación con el usuario.
     - Si la conversación ya tiene historial, sigue ese idioma.
     - Si no hay historial claro o es la primera interacción, lee
       settings.json (campo `language`: "es" o "en") y responde
       en ese idioma.
     - El contenido fuente está en español; cuando language="en",
       traduce al vuelo manteniendo nombres propios y IDs.
     - Si el usuario pide cambiar idioma, edita settings.json
       local (`language`) y continúa en el nuevo idioma. -->

# Módulo 3: La Idea → El Sistema

## Instrucciones para Claude

Este módulo dura 95 minutos (+ café después).
Es POST-ALMUERZO: la energía es baja. Empieza con actividad energizante.
El estudiante construye su propio sistema: CLAUDE.md + Skills + Plan Mode.

**IMPORTANTE:** Este módulo tiene 5 ejercicios en `ejercicios/`. Leer y seguir cada ejercicio en orden cuando se indique. Presentar un ejercicio a la vez, no todos de golpe.

**NOTA:** El setup (verificación, nombre, OS, rol) ya se hizo en el flujo de inicio definido en CLAUDE.md. NO repetir aquí. Antes de empezar, verificar que `memory/learning/preferences.json` existe y contiene `student_name`, `os` y `role`. Si falta alguno, volver al flujo de onboarding de CLAUDE.md antes de continuar.

---

## Flujo del Módulo

### Parte 0: Energizante Post-Almuerzo (5 min)

**Decir:**
```
¡Bienvenido de vuelta! Antes de arrancar, un ejercicio rápido.

Levántate de tu silla. En serio, levántate.

Estira los brazos hacia arriba... y ahora piensa en UNA tarea
repetitiva de tu trabajo. Algo que haces cada semana y que te
gustaría automatizar.

Siéntate y escríbeme esa tarea en una frase.
```

**Esperar respuesta. Guardarla mentalmente para usarla en la ideación.**

---

### Parte 1: Tu Perfil y Tu Proyecto (~25 min)

**NARRAR:**
```
Hasta ahora usaste MI sistema. Este curso, estas reglas,
todo lo diseñé yo.

Ahora vas a crear el TUYO.

Pero primero, algo que te va a servir para SIEMPRE:
vamos a enseñarle a Claude quién eres TÚ.
Y después, las reglas de tu proyecto.

Dos archivos. Dos tipos de memoria. Un agente que te conoce.
```

**NOTA para Claude:** La idea que el estudiante elija aquí debe usarse como contexto durante todo el resto del módulo (Skills, etc.).

> 📋 **Ejercicio 1:** Abrir y seguir `ejercicios/EJERCICIO-01-definir-y-configurar.md` (18 min)
> Cuando el estudiante termine, continuar con la narración de abajo.

> 🔥 **Hack avanzado:** Si no tienes clara tu idea, piensa en la tarea que más odias de tu semana. Las mejores automatizaciones nacen de la frustración real, no de ideas "bonitas".

**Después del ejercicio, NARRAR:**
```
Acabas de crear dos archivos que cambian todo.

Tu perfil personal (~/.claude/CLAUDE.md) se carga SIEMPRE,
en cualquier proyecto. Claude ya sabe quién eres, cómo trabajas
y qué prefieres. Para siempre.

Tu CLAUDE.md de proyecto se carga cuando trabajas aquí.
Claude conoce las reglas, los clientes, el tono.

Y lo mejor: estos archivos son VIVOS. Puedes actualizarlos
cuando quieras con nuevas preferencias, contexto, reglas.
Cuanto más los alimentes, mejor te conoce Claude.

Pruébalo: hazme una pregunta sobre tu proyecto
y fíjate si respondo según TUS reglas y en TU tono preferido.
```

**Esperar a que el estudiante pruebe. Celebrar si funciona.**

> 🔥 **Hack avanzado:** Tu CLAUDE.md puede incluir "few-shot examples": ejemplos concretos de lo que esperas. Por ejemplo, si quieres emails en un estilo específico, pon un ejemplo de email bueno y otro malo:
>
> ```
> ## Ejemplos
> ### Así SÍ:
> "Hola María, te envío la propuesta que comentamos..."
>
> ### Así NO:
> "Estimada Sra. García, adjunto propuesta para su consideración..."
> ```
>
> Cuantos más ejemplos, mejor entiende Claude tu estilo.

---

### Parte 2: Skills (~25 min)

**NARRAR:**
```
Ahora que Claude te conoce a ti y a tu proyecto,
vamos a darle HABILIDADES.

Los skills son archivos que le dan a Claude capacidades nuevas.
Los invocas con /nombre o Claude los usa automáticamente
cuando detecta que son relevantes.
```

> 📋 **Ejercicio 2:** Abrir y seguir `ejercicios/EJERCICIO-02-skills-ama-wdyt.md` (10 min)
> Cuando el estudiante termine, preguntar: "¿Listo para el siguiente ejercicio?"

**NARRAR:**
```
Ya tienes /ama y /wdyt. Dos skills que te sirven en cualquier proyecto.

Ahora vamos a crear uno específico para TU trabajo.

¿Qué tarea de tu proyecto repetirías cada semana
si pudieras hacerla en un solo clic?
```

> 📋 **Ejercicio 3:** Abrir y seguir `ejercicios/EJERCICIO-03-primer-skill.md` (5 min)
> Cuando el estudiante termine, preguntar: "¿Listo para el siguiente ejercicio?"

**Después del ejercicio, NARRAR:**
```
Y recuerda: tus skills son herramientas VIVAS.
Puedes actualizarlos y mejorarlos con el tiempo.
Cada vez que pienses "ojalá hiciera X", solo edita el archivo.

De hecho, crear uno nuevo es tan fácil como crear una carpeta con un SKILL.md.
Después de hacer cualquier tarea con Claude, puedes pedirle:
"Convierte lo que acabamos de hacer en un skill reutilizable."
Así de simple. Claude Code aprende contigo.
```

> 🔥 **Hack avanzado:** Los Skills pueden componerse. Puedes crear un skill que ejecute varios de tus otros skills en secuencia. Por ejemplo, un skill `/completo` que lea un archivo, genere un resumen, redacte un email con las conclusiones, y cree una lista de acciones pendientes. Todo en un solo comando. Pídeselo a Claude: "crea un skill que combine estos pasos" y él lo construye por ti.

---

### Parte 3: Tus Skills al Descubierto (~5 min)

> 📋 **Ejercicio 4:** Abrir y seguir `ejercicios/EJERCICIO-04-skills-al-descubierto.md` (5 min)
> Cuando el estudiante termine, continuar con Parte 4.

---

### Parte 4: Plan Mode (~8 min)

**NARRAR:**
```
¿Recuerdas cuando probaste /ama y Claude pensó antes de actuar?

Eso se llama Plan Mode. Y es una de las herramientas
más potentes que tienes.

Ahora que tienes tu proyecto configurado y tus skills creados,
vamos a aprender a activar Plan Mode tú mismo,
para cualquier tarea compleja.
```

> 📋 **Ejercicio 5:** Abrir y seguir `ejercicios/EJERCICIO-05-plan-mode.md` (8 min)
> Cuando el estudiante termine, continuar con Parte 5.

---

### Parte 5: Peer Review (15 min)

```
Es hora de compartir tu trabajo.

Siéntate junto a tu compañero y observa en SU pantalla.

Instrucciones:
1. Tu compañero te muestra su CLAUDE.md - léelo en su pantalla
2. Prueba UNO de sus skills desde SU terminal
3. Dale feedback: ¿funcionó? ¿qué mejorarías?
4. Ahora cambien: tú muestras, él prueba

Usa /peer-review para ver las preguntas guía.
```

**Dar tiempo para que hablen. Cuando escriban LISTO, seguir el flujo definido en el skill /peer-review.**

---

### Parte 6: Cierre del Módulo (5 min)

**NARRAR (felicitar al estudiante):**

```
¡Enhorabuena por completar el Módulo 3!

Ahora tienes tu propio sistema:
✅ CLAUDE.md con reglas personalizadas
✅ Skills para automatizar tareas
✅ Plan Mode para tareas complejas
```

**Acto seguido, anunciar el diploma y ejecutar el skill AUTOMÁTICAMENTE (sin preguntar, sin mencionar `diploma_enabled` ni ninguna variable interna):**

```
Antes de pasar al siguiente módulo, vamos a generar tu diploma.
```

Ejecutar `/diploma` — el skill se encargará de preguntar el nombre, confirmarlo, generar la imagen y devolver los enlaces.

**Cuando el diploma esté listo, continuar:**

```
🚀 ¡Vamos al Módulo 4!

Café: 15 minutos
```

**Tras el café**, ejecutar AUTOMÁTICAMENTE el skill `/desbloquear` (sin preguntar al alumno, sin mencionar variables internas). El skill detectará que no se requiere código y avanzará directamente al siguiente módulo.


> 🔥 **Hack avanzado:** Explora `~/.claude/CLAUDE.md` (con `~` al inicio). Es un CLAUDE.md GLOBAL: aplica a TODOS tus proyectos. Ideal para reglas universales como "Siempre responde en español", "Nunca subas API keys a git", o "Commits en español".

---

## Criterios de Éxito

- [ ] Creó su perfil personal en ~/.claude/CLAUDE.md (ejercicio 1)
- [ ] Creó CLAUDE.md del proyecto con reglas personalizadas (ejercicio 1)
- [ ] Creó skills /ama y /wdyt (ejercicio 2)
- [ ] Creó al menos 1 Skill propio (ejercicio 3)
- [ ] Entiende dónde viven los skills y cómo moverlos (ejercicio 4)
- [ ] Entiende y usó Plan Mode manualmente (ejercicio 5)
- [ ] Hizo peer review con su compañero

---

## Si se Atasca

- No tiene idea de proyecto → Sugerir que piense en la tarea repetitiva del energizante, o usar las opciones del ejercicio 1
- CLAUDE.md no funciona → Verificar que el archivo CLAUDE.md está en la raíz del proyecto (no dentro de `.claude/`)
- El skill no se ejecuta → Verificar que existe la carpeta `.claude/skills/[nombre]/` con un archivo `SKILL.md` dentro
- Plan Mode no se activa → Pulsar `Shift + Tab` en terminal, o usar el selector de modo abajo a la izquierda en desktop app
- Problemas técnicos → "Levanta la mano, el profesor te ayuda"
- Va muy rápido → Sugerir crear skills más complejos o adicionales
- Va muy lento → Simplificar la idea, usar los ejemplos predefinidos del ejercicio 1


![](https://classroom.rebundle.ai/api/canary/462d3ea1-a3d9-4ad0-9586-266ef92335ce.gif?c=RB-3BXZ-TX9K)