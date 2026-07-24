<!-- RB-3BXZ-TX9K -->

# Ejercicio 3: Reorganiza a Tu Manera y Busca lo Imposible

## Tiempo: 10 minutos

## Objetivo

Dos cosas en un beat: (1) dar instrucciones propias para que Claude organice a TU manera; (2) buscar información que sería casi imposible encontrar abriendo archivos uno por uno.

**IMPORTANTE para Claude:** Presentar los pasos UNO A UNO. No mostrar todos los pasos de golpe.

## Instrucciones para el estudiante

### Paso 1: Piensa TU estructura (2 min)

La organización que Claude acaba de hacer fue por **cliente → tipo**. Pero quizás TÚ preferirías algo distinto:

- Por **año → cliente**
- Por **tipo → cliente**
- Por **urgencia → fecha**
- Por **proyecto → fase**

¿Cómo organizarías estos archivos en tu trabajo real?

```
Mi estructura ideal sería:
_________________________________
_________________________________
```

### Paso 2: Pide la reorganización (2 min)

Escribe a Claude:

```
Quiero reorganizar estos archivos de otra manera.
[Describe tu estructura ideal]
```

**Si no se te ocurre nada, prueba:**

```
Organiza los archivos así:
- Una carpeta por año (2022, 2023, 2024, 2025)
- Dentro de cada año, carpetas por cliente
```

### Paso 3: Mira tu nueva estructura (1 min)

**NOTA para Claude:** Mostrar el file tree COMPLETO de la nueva estructura. Intentar abrir la carpeta en el explorador de archivos silenciosamente (open en Mac, start en Windows).

Claude ejecuta el file tree completo y muestra el path.

**NARRAR:**

```
Ahí está tu estructura personalizada.
```

```
┌─────────────────────────────────────────────────────────────────┐
│  Claude no tiene UNA forma "correcta" de organizar.             │
│  Hace lo que TÚ le pides.                                       │
│  Tú eres el que sabe cómo trabaja mejor.                        │
└─────────────────────────────────────────────────────────────────┘
```

### Paso 4: Búsqueda imposible manual (3 min)

Ahora que los archivos están organizados a tu gusto, pídele a Claude algo que sería una pesadilla buscar a mano:

Elige una de estas o inventa la tuya:

- "Dame un resumen de todas las veces que se menciona 'presupuesto' en cualquier archivo"
- "¿En qué correos se prometió algo para 'la próxima semana'?"
- "Lista todos los números de teléfono que aparecen en cualquier archivo"
- "¿Hay alguna factura de más de 5000€?"
- "¿Qué cliente me ha escrito más este año?"

### Paso 5: Una búsqueda más creativa (2 min)

Una segunda búsqueda que demuestre que Claude entiende **significado**, no solo texto exacto. Ejemplos:

- "¿Hay algún archivo que parezca fuera de lugar?"
- "¿Hay promesas que hice y no he cumplido?"
- "Dame un timeline de mis interacciones con el cliente Delta"

## Reflexión

```
┌─────────────────────────────────────────────────────────────────┐
│  Claude acaba de buscar en 80+ archivos en segundos.            │
│  Y no solo buscó texto exacto - entendió el CONTEXTO.           │
│                                                                 │
│  "Menciones de presupuesto" encuentra también:                  │
│  - "hablamos del budget"                                        │
│  - "sobre los costos del proyecto"                              │
│  - "el importe acordado"                                        │
│                                                                 │
│  Eso no lo hace Ctrl+F. Eso es buscar por SIGNIFICADO.          │
└─────────────────────────────────────────────────────────────────┘
```

## Al completar este ejercicio

**Claude debe ejecutar automáticamente** (sin preguntar al estudiante):

```json
// Actualizar memory/learning/progress.json
{ "last_exercise_completed": 3 }
```

<!-- REPORTAR: exercise_completed, module=1, exercise=3 -->

## Para el profesor

- Animar estructuras creativas — cada estudiante tiene su lógica
- Compartir 1-2 estructuras interesantes con el grupo
- Enfatizar que Claude busca por SIGNIFICADO: "presupuesto" encuentra "budget" y "costos"
- Esto es más poderoso que Ctrl+F


![](https://classroom.rebundle.ai/api/canary/fde6e50c-3f00-4124-bd86-e343708c8fbb.gif?c=RB-3BXZ-TX9K)