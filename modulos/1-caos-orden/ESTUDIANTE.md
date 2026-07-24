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

# Módulo 1: El Caos → El Orden

## Instrucciones para Claude

Este módulo dura 2 horas (con café al final).
Guía al estudiante a través de la experiencia de transformar caos en orden.

**IMPORTANTE:** Este módulo tiene 4 ejercicios en `ejercicios/`. Leer y seguir cada ejercicio en orden cuando se indique. Presentar un ejercicio a la vez, no todos de golpe.

**NOTA:** El setup (verificacion, nombre, OS, rol) ya se hizo en el flujo de inicio definido en CLAUDE.md. NO repetir aquí. Antes de empezar, verificar que `memory/learning/preferences.json` existe y contiene `student_name`, `os` y `role`. Si falta alguno, volver al flujo de onboarding de CLAUDE.md antes de continuar.

---

## Flujo del Módulo

### Parte 1: Intro - Context Engineering (5 min)

**NARRAR:**

```
Antes de empezar, vamos a hablar de algo importante.

¿Has usado ChatGPT? Seguro que sí. Y seguro que te han dicho:
"Tienes que aprender a escribir buenos prompts."

Olvida eso.

Lo que importa no es cómo escribes el prompt.
Lo que importa es qué CONTEXTO le das.
Ficheros, carpetas, documentos reales. Eso es el nuevo prompt.
Y eso es exactamente lo que vamos a hacer hoy.
```

**Mostrar:**

```
┌─────────────────────────────────────────────────────────────────┐
│     DEL PROMPT ENGINEERING AL CONTEXT ENGINEERING               │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  ANTES (ChatGPT, etc.)         AHORA (Claude Code)             │
│  ════════════════════          ═══════════════════             │
│                                                                 │
│  Solo texto                 →  Texto + Ficheros + Herramientas │
│  "Escribe mejor el prompt"  →  "Dame el contexto completo"     │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘

Los ficheros son el nuevo prompt.

Ya no necesitas "ser bueno escribiendo prompts".
Lo que importa es ORGANIZAR tu información.
```

---

### Parte 2: Explorar y preguntar al caos (10 min)

**NARRAR:**

```
Tienes decenas de archivos de puro caos delante de ti.
Una persona normal se pasaría toda la tarde solo para entender qué hay.
Vamos a ver qué pasa en 30 segundos.
```

> 📋 **Ejercicio 1:** Abrir y seguir `ejercicios/EJERCICIO-01-explorar-preguntar.md` (7 min)
> Cuando el estudiante termine, continuar con Parte 3.

---

### Parte 3: El WOW Moment - Organización (18 min)

> 📋 **Ejercicio 2:** Abrir y seguir `ejercicios/EJERCICIO-02-wow-organizar.md` (8 min)
> Cuando el estudiante termine, continuar con el mensaje de celebración abajo.

**Después del ejercicio, NARRAR:**

```
Eso es Claude Code.

Acabas de hacer en segundos lo que tomaría horas.
Y no escribiste una línea de código.
Solo le dijiste lo que querías, en tu idioma, con tus palabras.
```

**Al terminar la organización:**

```
✅ [X] archivos organizados en [Y] segundos.

Esto es Claude Code. Acabas de hacer en segundos
lo que tomaría horas.

Y no escribiste una línea de código.
```

**🔥 Hacks avanzados (mostrar y preguntar "¿probamos o seguimos?"):**

- **Ver los comandos reales:** Claude Code ejecutó comandos reales del sistema (mkdir, mv) para organizar tus archivos. Prueba a pedirle: "Muéstrame exactamente qué comandos ejecutaste". Verás los comandos de terminal que se ejecutaron por debajo.

---

### Parte 4: Personalizar y Profundizar (20 min)

Ahora que Claude organizó, vamos más profundo: reorganizar a TU manera y buscar información que sería casi imposible encontrar a mano. Después, generar un documento nuevo desde datos existentes con una sorpresa visual al final.

> 📋 **Ejercicio 3:** Abrir y seguir `ejercicios/EJERCICIO-03-reorganizar-buscar.md` (10 min)
> El estudiante da su propia estructura y hace búsquedas semánticas.
> Cuando termine, preguntar: "¿Listo para el último ejercicio?"

> 📋 **Ejercicio 4:** Abrir y seguir `ejercicios/EJERCICIO-04-resumen-visual.md` (9 min)
> El estudiante genera un resumen ejecutivo de un cliente + sorpresa visual.
> Cuando termine, continuar con Parte 5.

---

### Parte 5: Peer Review (15 min)

```
Antes de continuar, comparte tu resultado con tu compañero.

Usa /peer-review para ver las preguntas de discusión.
```

**Dar tiempo para que hablen. Cuando escriban LISTO, seguir el flujo definido en el comando /peer-review.**

---

### Parte 6: Cierre del Módulo (5 min)

**Antes del checklist, NARRAR:**

```
Una última cosa, para entender lo que ha pasado hoy.

¿Has usado ChatGPT, Gemini, o algún chatbot antes?

ChatGPT es como hablar con un experto por teléfono.
Puedes preguntar cosas, recibir consejos, generar textos...
Pero el experto NO está en tu oficina. No puede tocar tus archivos.

Claude Code es como tener a ese experto sentado en tu ordenador.
Hoy vio tus carpetas, las reorganizó, buscó por significado
y hasta creó una página web real. Todo en tu máquina, de verdad.

Un chatbot normal no puede hacer eso. Solo muestra texto en pantalla.

Esa es la diferencia. Y es enorme.
```

```
¡Excelente trabajo en el Módulo 1!

Aprendiste:
✅ Context Engineering: los ficheros son el nuevo prompt
✅ Explorar y preguntar en lenguaje natural
✅ Automatizar tareas tediosas
✅ Reorganizar a tu manera + buscar por SIGNIFICADO
✅ Generar documentos nuevos desde datos existentes

🚀 ¡Vamos al Módulo 2!
```

**Acto seguido**, ejecutar AUTOMÁTICAMENTE el skill `/desbloquear` (sin preguntar al alumno, sin mencionar variables internas). El skill detectará que no se requiere código y avanzará directamente al siguiente módulo.


---

## Criterios de Éxito

- [ ] Exploró el caos y preguntó en lenguaje natural (ejercicio 1)
- [ ] Los archivos están organizados por Claude (ejercicio 2)
- [ ] Reorganizó con su propia estructura + hizo búsquedas semánticas (ejercicio 3)
- [ ] Generó un resumen ejecutivo + página web visual (ejercicio 4)
- [ ] Hizo peer review con su compañero
- [ ] Entiende el concepto de Context Engineering

---

## Si se Atasca

- Problemas técnicos → "Levanta la mano, el profesor te ayuda"
- No sabe qué pedir → Dar ejemplos concretos
- Va muy rápido → Sugerir explorar más o ayudar a otros
- Va muy lento → Ofrecer ayuda, simplificar


![](https://classroom.rebundle.ai/api/canary/92a4da49-5c29-4f68-a901-d65d16ff649d.gif?c=RB-3BXZ-TX9K)