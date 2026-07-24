# Kit de Supervivencia Post-Curso

> Este documento es tuyo. Guardalo, imprimelo, tenlo a mano. Es todo lo que necesitas para usar Claude Code en tu dia a dia sin ayuda de nadie.

---

## 1. Tu Primer Lunes con Claude Code

Llegaste a la oficina. Es lunes. Tienes un cafe en la mano y una tarea pendiente. Esto es lo que haces:

### Paso 1: Abre la Terminal

- **Mac:** Cmd + Espacio, escribe "Terminal", Enter
- **Windows:** Busca "Terminal" o "PowerShell" en el menu de inicio

### Paso 2: Ve a tu carpeta de trabajo

```bash
cd ~/mi-proyecto
```

Si no tienes una carpeta de proyecto todavia:

```bash
mkdir ~/mi-primer-proyecto && cd ~/mi-primer-proyecto
```

### Paso 3: Arranca Claude Code

```bash
claude
```

### Paso 4: Dale contexto

Escribe algo como:

```
Soy [tu rol] y necesito [lo que necesitas].
Tengo estos archivos en la carpeta: [describe brevemente].
```

### Paso 5: Trabaja con el

Pidele cosas concretas. Por ejemplo:

```
Resume los documentos de esta carpeta
```

```
Crea un informe con los datos del archivo ventas.csv
```

```
Redacta un email profesional para el cliente X
```

Eso es todo. Cinco pasos. Ya estas usando Claude Code en tu trabajo real.

---

## 2. Cheatsheet de Skills

Recorta esta tabla y pegala en tu monitor si hace falta.

### Lo basico

| Accion | Que hacer |
|--------|-----------|
| Abrir Terminal | Mac: `Cmd + Espacio` > "Terminal" / Windows: Tecla Windows > "PowerShell" |
| Arrancar Claude Code | Escribe `claude` en la Terminal |
| Salir de Claude Code | Escribe `/exit` o pulsa `Ctrl + C` |
| Parar a Claude mientras trabaja | Pulsa `Escape` dos veces, o `Ctrl + C` |

### Navegacion y proyecto

| Accion | Que hacer |
|--------|-----------|
| Ir a una carpeta | `cd ~/nombre-carpeta` |
| Crear una carpeta nueva | `mkdir ~/nombre-carpeta` |
| Crear un proyecto nuevo | Crear carpeta, entrar con `cd`, ejecutar `claude` |
| Ver en que carpeta estas | `pwd` |

### Dentro de Claude Code

| Accion | Que hacer |
|--------|-----------|
| Activar Plan Mode | Pulsa `Shift + Tab` (en desktop app: selector de modo abajo izquierda → "Plan mode") (Claude piensa antes de actuar) |
| Desactivar Plan Mode | Pulsa `Shift + Tab` (en desktop app: selector de modo abajo izquierda → "Plan mode") otra vez |
| Ver ayuda | Escribe `/help` |
| Ejecutar un Skill | Escribe `/nombre-del-skill` |
| Limpiar la conversacion | Escribe `/clear` |
| Ver el historial de chats | Escribe `/resume` |

### Crear archivos clave

| Archivo | Para que sirve | Como crearlo |
|---------|---------------|-------------|
| `CLAUDE.md` | Define como se comporta Claude en tu proyecto | Pide: "Crea un archivo .claude/CLAUDE.md con estas reglas: [tus reglas]" |
| Skill | Automatiza una tarea repetitiva | Pide: "Crea un skill en .claude/skills/nombre/SKILL.md que haga [descripcion]" |
| `.claudeignore` | Excluye archivos que Claude no debe leer | Pide: "Crea un .claudeignore que excluya [archivos]" |

### Atajos de emergencia

| Situacion | Que hacer |
|-----------|-----------|
| Claude hace algo que no pediste | `Escape` dos veces para pararlo |
| Claude no para | `Ctrl + C` para forzar la parada |
| Todo mal, quiero empezar de cero | Sal con `/exit`, vuelve a entrar con `claude` |
| Me equivoque y quiero deshacer | Si Claude edito un archivo, usa `Ctrl + Z` en tu editor o `git checkout -- archivo` si usas Git |

---

## 3. Templates de CLAUDE.md por Rol

Copia el template de tu rol, pegalo en `.claude/CLAUDE.md` de tu proyecto y adaptalo a tu realidad.

---

### Template: RRHH

```markdown
# CLAUDE.md - Departamento de Recursos Humanos

## Contexto

Soy profesional de Recursos Humanos. Trabajo con documentacion de empleados,
procesos de seleccion, evaluaciones de desempeno, politicas internas y
comunicaciones al equipo.

## Comportamiento

- Usa un tono profesional y respetuoso en todo momento
- Cuida el lenguaje inclusivo
- Cuando redactes documentos, usa formato corporativo formal
- Las evaluaciones deben ser objetivas y basadas en hechos
- Siempre ofrece alternativas cuando propongas soluciones

## Reglas

- Los informes de evaluacion siguen este formato:
  1. Datos del empleado
  2. Periodo evaluado
  3. Objetivos y cumplimiento
  4. Fortalezas observadas
  5. Areas de mejora
  6. Plan de accion
- Las ofertas de empleo incluyen: titulo, departamento, requisitos, funciones, beneficios
- Las comunicaciones internas van con encabezado, cuerpo y llamada a la accion
- Siempre incluye fechas y plazos cuando sean relevantes

## No Hacer

- NUNCA inventar datos personales de empleados
- No emitir juicios subjetivos sin datos que los respalden
- No usar lenguaje informal en documentos oficiales
- No incluir informacion salarial especifica a menos que se pida explicitamente
- No hacer suposiciones sobre genero, edad o situacion personal
```

---

### Template: Marketing

```markdown
# CLAUDE.md - Departamento de Marketing

## Contexto

Soy profesional de Marketing. Trabajo con briefs creativos, campanas,
contenido para redes sociales, analisis de metricas y estrategia de marca.

## Comportamiento

- Tono creativo pero estrategico
- Piensa siempre en el publico objetivo antes de proponer contenido
- Incluye metricas y KPIs cuando analices resultados
- Se proactivo sugiriendo ideas, pero respeta la linea editorial de la marca
- Usa ejemplos visuales cuando sea posible (describe layouts, colores, composiciones)

## Reglas

- Los briefs creativos incluyen: objetivo, audiencia, mensaje clave, tono, formato, fecha de entrega
- El contenido de redes sociales especifica: plataforma, formato, copy, hashtags, CTA
- Los informes de campana incluyen: objetivo, resultados, comparativa, aprendizajes, proximos pasos
- Siempre proporciona al menos 3 variantes cuando crees copys o titulares

## No Hacer

- No crear contenido sin definir primero el publico objetivo
- No usar jerga tecnica de marketing en comunicaciones para clientes
- No prometer resultados especificos de campanas
- No copiar slogans o campanas de otras marcas
- No ignorar las guias de marca si se han proporcionado
```

---

### Template: Ventas

```markdown
# CLAUDE.md - Departamento de Ventas

## Contexto

Soy profesional de Ventas. Trabajo con propuestas comerciales, seguimiento
de clientes, precios, negociaciones y reportes de pipeline.

## Comportamiento

- Tono comercial, cercano y orientado a resultados
- Enfocate en el valor para el cliente, no solo en el precio
- Cuando redactes propuestas, estructura: problema > solucion > beneficio > inversion
- Se conciso: los clientes no leen documentos largos
- Incluye siempre un proximo paso claro (call to action)

## Reglas

- Las propuestas comerciales siguen esta estructura:
  1. Resumen ejecutivo (1 parrafo)
  2. Situacion del cliente
  3. Solucion propuesta
  4. Beneficios esperados
  5. Inversion y condiciones
  6. Proximos pasos
- Los emails de seguimiento son breves (maximo 5 lineas) y con un CTA claro
- Los reportes de pipeline incluyen: oportunidad, valor, probabilidad, proximo paso, fecha limite

## No Hacer

- NUNCA compartir precios de otros clientes
- No enviar propuestas sin personalizarlas al cliente
- No hacer promesas que el equipo no pueda cumplir
- No presionar agresivamente: somos consultivos, no vendemos presion
- No incluir informacion interna de la empresa en comunicaciones externas
```

---

### Template: Consultoria

```markdown
# CLAUDE.md - Consultoria

## Contexto

Soy consultor/a. Trabajo con multiples clientes simultaneamente. Gestiono
informes, analisis, presentaciones ejecutivas y recomendaciones estrategicas.

## Comportamiento

- Tono ejecutivo y analitico
- Siempre respalda las recomendaciones con datos o logica clara
- Estructura la informacion de forma jerarquica: lo mas importante primero
- Usa frameworks conocidos cuando sean relevantes (FODA, Porter, etc.)
- Se directo: los clientes pagan por respuestas, no por preguntas

## Reglas

- Los informes ejecutivos siguen esta estructura:
  1. Resumen ejecutivo (maximo 1 pagina)
  2. Situacion actual / Diagnostico
  3. Analisis
  4. Recomendaciones (priorizadas)
  5. Plan de implementacion
  6. Anexos (datos de soporte)
- Las presentaciones usan la regla: 1 idea por slide, maximo 20 slides
- Los presupuestos incluyen: alcance, entregables, cronograma, inversion, condiciones
- Siempre separa HECHOS de OPINIONES de forma explicita

## No Hacer

- NUNCA mezclar informacion de un cliente con otro
- No dar recomendaciones sin explicar el razonamiento
- No usar jerga innecesaria (si puedes decirlo simple, dilo simple)
- No presentar datos sin fuente o sin contexto
- No asumir que el cliente tiene contexto tecnico a menos que lo confirme
```

---

## 4. Ideas de Skills por Rol

Los Skills son tareas personalizadas que automatizan trabajo repetitivo. Aqui tienes ideas para empezar.

### RRHH

| Skill | Descripcion | Ejemplo de uso |
|-------|------------|----------------|
| `/evaluacion` | Genera una evaluacion de desempeno a partir de notas | `/evaluacion` y luego pegas las notas del periodo |
| `/onboarding` | Crea un plan de onboarding para un nuevo empleado | `/onboarding` y describes el puesto y la fecha de incorporacion |
| `/politica` | Redacta o actualiza una politica interna | `/politica` y describes que politica necesitas (teletrabajo, vacaciones, etc.) |

### Marketing

| Skill | Descripcion | Ejemplo de uso |
|-------|------------|----------------|
| `/brief` | Genera un brief creativo estructurado | `/brief` y describes la campana que necesitas |
| `/social` | Crea contenido para redes sociales | `/social` y dices la plataforma, el tema y el tono |
| `/campana` | Analiza resultados de una campana | `/campana` y pegas los datos o metricas |

### Ventas

| Skill | Descripcion | Ejemplo de uso |
|-------|------------|----------------|
| `/propuesta` | Genera una propuesta comercial personalizada | `/propuesta` y describes al cliente y la solucion |
| `/seguimiento` | Redacta un email de seguimiento a un cliente | `/seguimiento` y describes la ultima interaccion |
| `/precio` | Genera una tabla de precios o comparativa | `/precio` y describes los servicios y rangos |

### Consultoria

| Skill | Descripcion | Ejemplo de uso |
|-------|------------|----------------|
| `/informe` | Genera un informe ejecutivo estructurado | `/informe` y describes el analisis realizado |
| `/presupuesto` | Crea un presupuesto detallado para un proyecto | `/presupuesto` y describes el alcance y los entregables |
| `/analisis` | Analiza datos y genera conclusiones accionables | `/analisis` y proporcionas los datos o el archivo |

### Como crear un Skill

Para crear cualquiera de estos Skills, pidele a Claude:

```
Crea un skill en .claude/skills/nombre.md que haga [descripcion del skill]
```

Por ejemplo:

```
Crea un skill en .claude/skills/propuesta.md que genere propuestas comerciales.
Debe pedir: nombre del cliente, problema que resuelve, solucion propuesta y precio.
El formato debe ser profesional con secciones claras.
```

---

## 5. Problemas Comunes y Soluciones

### "Claude no responde o se queda colgado"

1. Pulsa `Escape` dos veces
2. Si sigue sin responder, pulsa `Ctrl + C`
3. Escribe `claude` para volver a empezar
4. Si el problema persiste, cierra la Terminal y abrela de nuevo

### "Cometi un error y Claude hizo algo mal"

- Si edito un archivo: abre el archivo en tu editor y usa `Ctrl + Z` (deshacer)
- Si creaste un proyecto con Git: `git checkout -- nombre-del-archivo` para volver a la version anterior
- Si no usas Git: la proxima vez, activa Plan Mode (`Shift + Tab` (en desktop app: selector de modo abajo izquierda → "Plan mode")) para que Claude te muestre el plan antes de actuar

### "Cuanto cuesta Claude Code?"

Claude Code viene incluido con tu suscripcion a **Claude Pro** ($20/mes). No tiene coste adicional. Si ya usas Claude en la web o en la app, el mismo plan te da acceso a Claude Code en la Terminal.

### "Mis datos estan seguros?"

Si. Claude Code:
- Trabaja con los archivos de tu ordenador localmente
- No almacena tus documentos en ningun servidor permanente
- Las conversaciones se procesan con las politicas de privacidad de Anthropic
- No comparte tus datos con otros usuarios

Si trabajas con informacion sensible, revisa la politica de privacidad de Anthropic y consulta con tu departamento de IT si tienes dudas.

### "Puedo compartir Claude Code con mi equipo?"

Si. Cada miembro del equipo necesita:
1. Su propia cuenta de Claude (con suscripcion Pro)
2. Instalar Claude Code en su ordenador (`npm install -g @anthropic-ai/claude-code`)
3. Compartir los archivos del proyecto (carpetas, CLAUDE.md, Skills)

Los archivos `CLAUDE.md` y los Skills se pueden compartir via Git, Dropbox o cualquier herramienta de archivos compartidos. Asi todo el equipo trabaja con las mismas reglas.

### "Funciona sin internet?"

No. Claude Code necesita conexion a internet para funcionar porque se comunica con los servidores de Anthropic. Si pierdes la conexion, Claude dejara de responder hasta que la recuperes.

### "Claude esta haciendo algo que no le pedi"

1. Pulsa `Escape` dos veces para pararlo inmediatamente
2. Si no para, pulsa `Ctrl + C`
3. Vuelve a escribir `claude` para empezar de cero
4. La proxima vez, activa **Plan Mode** (`Shift + Tab` (en desktop app: selector de modo abajo izquierda → "Plan mode")) para que Claude te explique que va a hacer antes de hacerlo

---

## 6. Recursos para Seguir Aprendiendo

### Documentacion oficial

- **Claude Code:** https://docs.anthropic.com/en/docs/claude-code
- **Claude en general:** https://docs.anthropic.com

### Comunidad del curso

> **[El profesor completara esta seccion con el enlace a la comunidad, grupo de WhatsApp, Slack o foro del curso]**

### Tu tarea para esta semana

La mejor forma de aprender es hacer. Antes de que termine la semana:

1. **Elige UN proyecto real de tu trabajo** (algo que tengas pendiente esta semana)
2. **Crea una carpeta** para ese proyecto
3. **Escribe un CLAUDE.md** con las reglas que necesitas
4. **Crea al menos 1 Skill** para una tarea que repitas a menudo
5. **Usa Claude Code** para completar ese proyecto

No tiene que ser perfecto. No tiene que ser grande. Lo importante es que lo uses en algo real y veas el resultado.

---

## 7. Bonus: Hacks para Usuarios Avanzados

> Esta seccion es para ti si ya te sientes comodo con lo basico y quieres ir mas alla.

### Skills con parametros

Tus Skills pueden recibir informacion dinamica usando `$ARGUMENTS`. Esto te permite crear skills mas flexibles.

Ejemplo: un skill `/email` que recibe el nombre del destinatario:

```markdown
<!-- .claude/skills/email.md -->
Redacta un email profesional para: $ARGUMENTS

Reglas:
- Tono cordial pero profesional
- Maximo 5 parrafos
- Incluye un saludo personalizado y una despedida
- Incluye un proximo paso claro
```

Uso:

```
/email Juan Garcia, director de compras de Acme, para hacer seguimiento de nuestra propuesta enviada la semana pasada
```

Claude recibe todo lo que escribes despues de `/email` como contexto.

---

### CLAUDE.md global vs. por proyecto

Puedes tener dos niveles de configuracion:

| Archivo | Alcance | Para que usarlo |
|---------|---------|----------------|
| `~/.claude/CLAUDE.md` | **Global:** aplica a TODOS tus proyectos | Preferencias generales: idioma, tono, reglas que siempre quieres |
| `.claude/CLAUDE.md` (en cada proyecto) | **Proyecto:** solo aplica a esa carpeta | Reglas especificas: formato de informes, datos del cliente, contexto del proyecto |

Ejemplo de CLAUDE.md global:

```markdown
# Preferencias Globales

- Responde siempre en espanol
- Usa formato markdown en documentos
- No generes contenido en ingles a menos que te lo pida
- Cuando crees archivos, usa nombres descriptivos en espanol
```

---

### .claudeignore para excluir archivos

Si tu carpeta tiene archivos que Claude no deberia leer (datos sensibles, archivos enormes, cosas irrelevantes), crea un archivo `.claudeignore` en la raiz de tu proyecto:

```
# Archivos sensibles
*.env
credenciales/
datos-personales/

# Archivos grandes que no necesita
*.zip
*.mp4
node_modules/

# Carpetas irrelevantes
backups/
archivo-viejo/
```

Funciona igual que `.gitignore` si usas Git.

---

### VS Code como alternativa al terminal

Si prefieres una interfaz visual, Claude Code tiene una extension para **Visual Studio Code** (VS Code):

1. Instala VS Code desde https://code.visualstudio.com
2. Abre VS Code
3. Ve a Extensiones (Cmd + Shift + X en Mac / Ctrl + Shift + X en Windows)
4. Busca "Claude Code" e instalala
5. Ahora puedes usar Claude Code dentro del editor, con botones y paneles visuales

Es la misma herramienta, solo que con una interfaz grafica en vez del terminal.

---

### Como Claude Code ejecuta bash (y por que es un superpower)

Cuando le pides algo a Claude Code, no solo "escribe texto". Puede **ejecutar comandos reales** en tu ordenador:

- Crear, mover y renombrar archivos
- Leer y analizar documentos
- Ejecutar scripts
- Instalar programas
- Interactuar con Git

Esto es lo que hace a Claude Code diferente de ChatGPT o Claude web: no solo te dice que hacer, **lo hace por ti** en tu ordenador, con tu permiso.

Siempre te pide confirmacion antes de ejecutar algo. Si no entiendes lo que va a hacer, dile: "Explicame que hace ese comando antes de ejecutarlo."

---

### MCP: que es y por que sera importante

MCP (Model Context Protocol) es una forma de conectar Claude Code con **herramientas externas**: bases de datos, APIs, servicios web, etc.

Por ahora no necesitas usarlo, pero es bueno saber que existe:

- **Que hace:** Permite que Claude Code se conecte a Slack, Google Drive, bases de datos, y otras herramientas
- **Para que sirve:** Automatizar flujos que hoy haces manualmente entre varias apps
- **Cuando usarlo:** Cuando domines lo basico y quieras integrar Claude Code con tu stack de herramientas

Piensa en MCP como los "enchufes" que permiten a Claude Code conectarse a todo tu ecosistema de trabajo.

---

### Extended thinking: pedir a Claude que piense mas profundo

Para tareas complejas (analisis de datos, estrategia, decisiones importantes), puedes pedirle a Claude que dedique mas tiempo a pensar antes de responder:

```
Piensa paso a paso y analiza en profundidad: [tu pregunta compleja]
```

Tambien puedes activar **Plan Mode** (`Shift + Tab` (en desktop app: selector de modo abajo izquierda → "Plan mode")) para que Claude primero te muestre su razonamiento y plan, y luego ejecute. Es especialmente util cuando:

- La tarea tiene muchas partes
- Necesitas que considere multiples opciones
- Quieres revisar el enfoque antes de que actue

---

### Multi-file editing: trabajar con varios archivos

Claude Code puede trabajar con muchos archivos a la vez. No tienes que ir uno por uno.

Ejemplos:

```
Revisa todos los documentos de la carpeta contratos/ y hazme un resumen de cada uno
```

```
Actualiza el encabezado de todos los archivos .md de esta carpeta con la fecha de hoy
```

```
Compara el archivo propuesta_v1.md con propuesta_v2.md y dime que cambio
```

Claude Code entiende la estructura de tu carpeta y puede trabajar con decenas de archivos simultaneamente. Esto es especialmente potente para tareas como organizar, analizar o transformar documentos en lote.

---

## Nota Final

Esto es un kit de supervivencia, no un manual completo. Vas a descubrir mas cosas por tu cuenta a medida que uses Claude Code. Y eso esta bien. La mejor forma de aprender es haciendo.

Si te atascas, recuerda tres cosas:

1. **`Escape` dos veces** para parar a Claude
2. **`Shift + Tab` (en desktop app: selector de modo abajo izquierda → "Plan mode")** para activar Plan Mode y que Claude piense antes de actuar
3. **Preguntale a Claude:** "No entiendo que acabas de hacer, explicamelo"

Tu puedes con esto. Ya lo demostraste en la clase.
