<!-- RB-3BXZ-TX9K -->

# Ejercicio 6: Crear un Resumen

## Tiempo: 9 minutos

## Objetivo
Que Claude genere un documento nuevo basado en información existente.

## El Escenario

Tienes una reunión en 5 minutos con un cliente.
Necesitas un resumen rápido de todo lo relacionado con ese cliente.

## Instrucciones para el estudiante

### Paso 1: Elige un cliente (30 seg)

Escoge uno de los clientes de tus archivos:
- Alpha
- Beta
- Gamma
- Delta
- Epsilon

Mi cliente elegido: ______________

### Paso 2: Pide el resumen (2 min)

Escribe a Claude:
```
Prepárame un resumen ejecutivo del cliente [NOMBRE].
Incluye:
- Últimas comunicaciones
- Temas pendientes
- Próximos pasos sugeridos
```

### Paso 3: Lee el resumen (2 min)

Claude generará algo como:
```markdown
# Resumen: Cliente Alpha

## Últimas comunicaciones
- 15 Ene 2025: Correo sobre presupuesto Q1
- 10 Ene 2025: Reunión de seguimiento
- ...

## Temas pendientes
- Propuesta de renovación (mencionado en correo del 12 Ene)
- Factura #234 sin confirmar pago
- ...

## Próximos pasos sugeridos
1. Confirmar recepción de factura
2. Agendar reunión para propuesta
3. ...
```

### Paso 4: Guarda el resumen (1 min)

Pide a Claude:
```
Guarda este resumen en un archivo llamado resumen-[cliente].md
```

### Paso 5: Verifica (1.5 min)

- Abre el archivo en tu explorador de archivos
- ¿El contenido es útil?
- ¿Qué agregarías o quitarías?

### Paso 6: El truco (2 min)

**Claude dice:**
```
Espera, te voy a mostrar un truco...
```

**Sin preguntar al estudiante, Claude hace lo siguiente automáticamente:**

1. Tomar el resumen ejecutivo que acaba de generar en la conversación
2. Generar un archivo HTML hermoso y profesional que visualice ese resumen con:
   - Google Fonts distintivas (NO fuentes por defecto como Inter, Roboto, Arial)
   - Un color dominante acorde al contenido del cliente
   - Fondo con textura o gradiente sutil (nunca blanco plano)
   - Animación de entrada suave al cargar la página
   - Secciones visuales claras: comunicaciones, pendientes, próximos pasos
   - Diseño responsive
   - Soporte dark mode
   - Inspirarse en los principios de `.claude/skills/viz/references/_principles.md` pero sin ejecutar el skill completo
3. Guardar como `output/resumen-visual/index.html`
4. NO intentar abrir el navegador automáticamente

**Después de guardar, mostrar la URL en una sola línea copiable:**
```
Copia y pega esta URL en tu navegador: file:///[PATH_COMPLETO]/output/resumen-visual/index.html
```

Ese resumen de texto que acabas de crear... Claude lo convirtió
en una página web profesional. Sin que tú escribieras HTML, CSS,
ni JavaScript.

Esto se llama "Vibe Coding" y lo exploraremos a fondo
en el Módulo 4. Por ahora, guarda esa sorpresa. 😉
```

**IMPORTANTE para Claude:**
- NO pedir permiso. Hacerlo directamente como sorpresa.
- La página HTML debe ser hermosa y distintiva. NO genérica.
- NO mencionar /viz ni el skill al estudiante.

## Reflexión

```
┌─────────────────────────────────────────────────────────────────┐
│  Acabas de:                                                     │
│  1. Analizar múltiples archivos                                 │
│  2. Extraer información relevante                               │
│  3. Sintetizar en un formato útil                               │
│  4. Crear un documento nuevo                                    │
│  5. Visualizarlo como página web profesional                    │
│                                                                 │
│  Todo en menos de 10 minutos.                                   │
│  Sin abrir un solo archivo manualmente.                         │
└─────────────────────────────────────────────────────────────────┘
```

## Variación (si te sobra tiempo)

Pide un resumen diferente:
- "Hazme un resumen de todas las facturas pendientes"
- "Crea un timeline de mis interacciones con Delta"
- "Lista todas las promesas que hice a clientes y no he cumplido"

## Al completar este ejercicio

**Claude debe ejecutar automáticamente** (sin preguntar al estudiante):

```json
// Actualizar memory/learning/progress.json
{ "last_exercise_completed": 4 }
```

<!-- REPORTAR: exercise_completed, module=1, exercise=4 -->

## Para el profesor

- Este ejercicio prepara para el M2 (extracción y análisis)
- Demuestra que Claude no solo organiza, también GENERA
- El "truco" visual al final planta la semilla de Vibe Coding (M4)
- Si alguien termina rápido, sugerir las variaciones


![](https://classroom.rebundle.ai/api/canary/f7ae2c5d-0dad-4757-921c-8720a2f8cc3a.gif?c=RB-3BXZ-TX9K)