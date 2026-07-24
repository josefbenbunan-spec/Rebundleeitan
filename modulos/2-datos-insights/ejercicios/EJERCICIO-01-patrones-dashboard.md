<!-- RB-3BXZ-TX9K -->

# Ejercicio 1: De los Datos a los Insights

## Tiempo: 14 minutos

## Objetivo

Tres cosas en un mismo flujo: (1) extraer datos estructurados de múltiples archivos en una tabla; (2) descubrir patrones e insights ocultos en esos datos; (3) convertirlos en un dashboard visual con gráficos interactivos. Sin Excel, sin Tableau, sin herramientas de BI.

**IMPORTANTE para Claude:** Presentar los pasos UNO A UNO. No mostrar todos los pasos de golpe.

## Instrucciones para el estudiante

### Paso 1: Extrae una tabla de datos (3 min)

Primero saca a la superficie la información que está "enterrada" en tus archivos.

Piensa: ¿qué datos sueltos sería útil ver juntos? Ideas:
- Todas las facturas con montos y fechas
- Todos los correos con fechas y remitentes
- Todas las reuniones con fechas y participantes
- Todos los clientes con su última interacción

Escribe a Claude:

```
Extrae de todos mis archivos [LO QUE ELEGISTE]
y preséntalo en una tabla con columnas: [COLUMNA 1], [COLUMNA 2], [COLUMNA 3].
Después guárdala en output/datos-extraidos.md
```

**Ejemplo concreto:**

```
Extrae de todos mis archivos las facturas
y preséntalo en una tabla con columnas: Cliente, Fecha, Monto, Estado.
Después guárdala en output/datos-extraidos.md
```

Claude te dará algo como:

```
| Cliente | Fecha      | Monto  | Estado     |
|---------|------------|--------|------------|
| Alpha   | 2024-01-15 | €5,000 | Pagada     |
| Beta    | 2024-02-20 | €3,200 | Pendiente  |
| Alpha   | 2024-03-10 | €4,500 | Pagada     |
...
```

**Claude DEBE mostrar el path completo del archivo guardado.**

```
┌─────────────────────────────────────────────────────────────────┐
│  Acabas de extraer datos de múltiples archivos                  │
│  sin abrir ninguno manualmente.                                 │
│                                                                 │
│  ¿Cuánto tiempo te habría tomado esto con Excel?                │
└─────────────────────────────────────────────────────────────────┘
```

**🔥 Hack avanzado (mostrar y preguntar "¿probamos o seguimos?"):**

- **Formatos a la carta:** "Ahora dame esos mismos datos en formato CSV" o "Ordénalos por fecha descendente". Claude transforma la información en cualquier formato sin volver a leer los archivos.
- **Claude dentro de tu hoja de cálculo:** Si usas Excel, busca **"Claude by Anthropic for Excel"** en el marketplace de complementos de Microsoft. Si usas Google Sheets, busca **"Claude for Sheets"** en el Workspace Marketplace. En ambos puedes pedirle a Claude que analice datos, cree fórmulas o genere gráficos sin salir de la hoja.

### Paso 2: Encuentra patrones (3 min)

Extraer datos es útil. Pero lo realmente poderoso es encontrar PATRONES OCULTOS.

Escribe a Claude:

```
Analiza todos mis archivos y dime:
1. ¿Cuál es mi cliente más activo?
2. ¿Hay algún patrón temporal? (¿meses más ocupados?)
3. ¿Hay algo inusual o que debería notar?
```

Lee la respuesta con atención.

**Después de la respuesta, NARRAR:**

```
Fíjate en lo que Claude acaba de hacer: no solo encontró DATOS.
Encontró SIGNIFICADO.

• Patrones que no habías notado.
• Problemas potenciales (cliente inactivo, factura vencida).
• Pistas sobre dónde poner tu atención.

Eso es convertir datos en inteligencia de negocio.
```

```
┌─────────────────────────────────────────────────────────────────┐
│  Claude no solo encontró datos - encontró SIGNIFICADO.          │
│                                                                 │
│  • Patrones que no habías notado                                │
│  • Problemas potenciales (cliente inactivo)                     │
│  • Acciones concretas a tomar                                   │
│                                                                 │
│  Eso es convertir datos en inteligencia de negocio.            │
└─────────────────────────────────────────────────────────────────┘
```

### Paso 3: Profundiza y pide recomendaciones (3 min)

Basándote en lo que Claude encontró, haz una pregunta de seguimiento:

- "¿Por qué hay tantos correos de Alpha en marzo?"
- "¿Qué pasó con Beta? Parece que dejaron de escribir"
- "Dame más detalles sobre esas facturas pendientes"

Y después, pide que convierta el análisis en acciones:

```
Basándote en este análisis, ¿qué 3 acciones me recomiendas tomar?
```

**Ejemplo de conversación:**

```
Tú: Analiza todos mis archivos y dime patrones

Claude: He encontrado varios patrones interesantes:
1. Cliente más activo: Alpha (45% de las interacciones)
2. Patrón temporal: Marzo y Septiembre son tus meses más ocupados
3. Algo inusual: Beta no ha tenido comunicación en 3 meses

Tú: ¿Qué pasó con Beta?

Claude: Revisando los archivos, la última comunicación fue el
15 de Enero sobre una propuesta pendiente. No hay respuesta
registrada después de eso.

Tú: ¿Qué me recomiendas?

Claude:
1. Contactar a Beta - hay una propuesta sin respuesta
2. Preparar para Marzo - históricamente es tu mes más ocupado
3. Revisar factura #234 de Alpha - lleva 45 días sin confirmar pago
```

### Paso 4: Dashboard visual con gráficos (5 min)

Ahora convierte esos insights en un dashboard visual que impacta.

Pide a Claude:

```
Crea un archivo output/dashboard.html con un dashboard visual
que muestre los datos que acabamos de analizar.
Usa Chart.js (incluir desde CDN, no instalar nada).
Incluye gráficos de barras y/o circular.
Diseño profesional, tema claro, fondo blanco.
Abre el archivo en el navegador cuando esté listo.
```

**NOTA para Claude:** Chart.js se incluye con una etiqueta `<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>` en el HTML. No necesita npm ni instalación. Los datos deben ser los mismos del análisis. Usar tema claro (light theme), colores profesionales, tipografía limpia. **Claude DEBE mostrar el path completo del archivo guardado.**

**Después de generar el dashboard, NARRAR:**

```
Acabas de crear un dashboard de negocio con lenguaje natural.

Sin Tableau. Sin Power BI. Sin fórmulas.
Solo: "muéstrame lo que importa."

Eso que ves ahí normalmente requiere un analista de datos
y una herramienta de 500€ al mes.
```

## Reflexión

```
┌─────────────────────────────────────────────────────────────────┐
│  En un solo flujo: extrajiste datos, encontraste patrones       │
│  y los visualizaste — sin usar ningún software de BI.          │
│                                                                 │
│  • Actualizable con un comando                                  │
│  • Basado en datos reales                                       │
│  • Formato que tú controlas                                     │
└─────────────────────────────────────────────────────────────────┘
```

## Al completar este ejercicio

**Claude debe ejecutar automáticamente** (sin preguntar al estudiante):

```json
// Actualizar memory/learning/progress.json
{ "last_exercise_completed": 1 }
```

<!-- REPORTAR: exercise_completed, module=2, exercise=1 -->

## Para el profesor

- El Paso 2 suele generar el "¡ah, no sabía eso!" - dejar que lo absorban
- Los dashboards de cada persona serán diferentes - animar personalización
- Si alguien no sabe qué extraer en el Paso 1, sugerir facturas o correos
- Chart.js sorprende: datos reales, gráfico interactivo, sin Excel ni BI
- Buen ejercicio para compartir en peer review


![](https://classroom.rebundle.ai/api/canary/f31826d7-e46d-4c0c-8b47-bc13d3578dfe.gif?c=RB-3BXZ-TX9K)