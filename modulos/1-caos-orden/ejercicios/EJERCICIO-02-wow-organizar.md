<!-- RB-3BXZ-TX9K -->

# Ejercicio 3: El WOW Moment - Organización Automática

## Tiempo: 8 minutos

## Objetivo
Experimentar el poder de la automatización. Este es el momento "wow" del curso.

## Instrucciones para el estudiante

### Paso 1: El ANTES (1 min)

**NOTA para Claude:** ANTES de organizar, mostrar el file tree COMPLETO de la carpeta de assets. Todos los archivos, sin resumir. El estudiante debe ver el caos real para apreciar el cambio después.

**NARRAR:**
```
Antes de organizar, veamos el estado actual completo:
```

Claude ejecuta el file tree completo de la carpeta de assets y muestra el total de archivos.

**NARRAR:**
```
[X] archivos sin estructura. Recuerda esta imagen.
Ahora vamos a transformarlo.
```

### Paso 2: Pide el plan (30 seg)

Escribe a Claude:
```
Organiza todos estos archivos por cliente y tipo de documento.
Además, renombra cada archivo con un formato consistente y descriptivo.
Conserva las fechas originales que aparezcan en el nombre o contenido del archivo.
```

### Paso 3: Observa el plan (1 min)

Claude te mostrará algo como:
```
Mi plan es:
1. Analizar cada archivo por su nombre y contenido
2. Identificar el cliente (Alpha, Beta, etc.)
3. Identificar el tipo (correo, nota, factura, etc.)
4. Crear carpetas organizadas por cliente y tipo
5. Renombrar cada archivo con formato consistente (ej: 2024-01-15_Correo_Reunion-seguimiento.md)
6. Mover todo a su lugar

¿Te parece bien?
```

### Paso 4: Aprueba (30 seg)

Escribe:
```
Sí, hazlo
```

### Paso 5: Observa la magia (2 min)

Mira cómo Claude:
- Crea las carpetas
- Renombra los archivos con nombres claros
- Mueve todo a su lugar
- Te reporta el resultado

### Paso 6: El DESPUÉS (2 min)

**NOTA para Claude:** Mostrar el file tree COMPLETO de la carpeta reorganizada. Todos los archivos con su nueva estructura. El contraste con el ANTES debe ser evidente.

**NARRAR:**
```
Ahora veamos el resultado:
```

Claude ejecuta el file tree completo de la carpeta reorganizada y muestra el path completo.

**NARRAR:**
```
¿Ves la diferencia?

ANTES: [X] archivos sueltos sin estructura.
DESPUÉS: [Y] carpetas organizadas por cliente y tipo.

Cada archivo renombrado con fecha y descripción clara.
```

Mostrar 3-4 ejemplos representativos del renombrado:
```
Ejemplos de lo que cambió:
  correo_alpha_2022.txt  →  Alpha/correos/2022-03-15_Correo_Propuesta-inicial.md
  factura_beta_123.md    →  Beta/facturas/2024-06-01_Factura_123-Consultoria-Q2.md
  nota_gamma.md          →  Gamma/notas/2024-02-20_Nota_Reunion-kick-off.md

Totales:
  📁 [X] carpetas creadas
  📄 [Y] archivos renombrados y movidos
  ⏱️ Tiempo: ~[Z] segundos
```

### Paso 7: Compruébalo tú mismo (1 min)

**NOTA para Claude:** Intentar abrir la carpeta reorganizada en el explorador de archivos (open en Mac, start en Windows). Hacerlo silenciosamente.

**NARRAR:**
```
Si se te ha abierto la carpeta, mira la nueva estructura.
Si no, aquí tienes el path para abrirla manualmente.
```

## Qué acabas de hacer

```
┌─────────────────────────────────────────────────────────────────┐
│                                                                 │
│   ANTES                          DESPUÉS                        │
│   ══════                         ═══════                        │
│                                                                 │
│   📄 correo_alpha_2022.txt       📁 Alpha/                      │
│   📄 factura_beta_123.md            📁 correos/                 │
│   📄 nota_gamma.md                     2022-03-15_Correo_...    │
│   📄 email_delta_urgente.txt        📁 facturas/                │
│   📄 ... (80+ archivos)               2024-06-01_Factura_...   │
│                                  📁 Beta/                       │
│                                     ...                         │
│                                                                 │
│   ⏱️ Tiempo: ~5 segundos                                        │
│   👤 Manual: ~2 horas                                           │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

## Reflexión

**Responde mentalmente:**
- ¿Cuánto tiempo te habría tomado hacer esto a mano?
- ¿Lo habrías hecho tan consistentemente?
- ¿Los nombres nuevos te ayudan a encontrar archivos más rápido?

## Al completar este ejercicio

**Claude debe ejecutar automáticamente** (sin preguntar al estudiante):

```json
// Actualizar memory/learning/progress.json
{ "last_exercise_completed": 2 }
```

<!-- REPORTAR: exercise_completed, module=1, exercise=2 -->

## Para el profesor

- **ESTE ES EL MOMENTO CLAVE DEL MÓDULO**
- Dejar que lo absorban - no apurar
- Caminar viendo reacciones
- Si alguien dice "wow" o similar, celebrarlo
- Si alguien tiene problemas, ayudar rápido para que no se pierda el momento
- El renombrado añade una capa extra de "wow" - los archivos no solo se mueven, se entienden


![](https://classroom.rebundle.ai/api/canary/91c4547d-e310-482c-b29b-d16379fe660c.gif?c=RB-3BXZ-TX9K)