---
name: resumen-apuntes
description: Junta apuntes de uno o varios archivos de un mismo tema y genera un resumen en bullets con lo esencial, para repasar antes de un examen
---

Se usa como repaso antes de un examen: junta apuntes de varios días/archivos sobre un mismo tema y los convierte en un resumen limpio.

## Input

El estudiante indicará uno o varios archivos con sus apuntes (ruta o nombre). Si $ARGUMENTS incluye una ruta o nombre de archivo, úsalo directamente. Si no está claro a qué archivo se refiere, pregunta antes de continuar — no asumas cuál es.

Tema/archivos: $ARGUMENTS

## Pasos

1. Lee el/los archivo(s) de apuntes indicados.
2. Identifica los temas y subtemas que aparecen.
3. Genera un resumen en bullets con lo esencial de cada tema — solo lo que aparece en los apuntes originales.
4. Convierte ese resumen en un PDF visual y fácil de aprenderse (usar pdfkit; instalar con `cd /tmp && npm install pdfkit` si no está disponible, y cargar con `require('/tmp/node_modules/pdfkit')`):
   - Un color por tema/bloque para que se distingan de un vistazo.
   - Jerarquía visual clara: título grande, subtítulos, bullets — no un bloque de texto plano.
   - Recuadros o cajas destacadas para lo más importante de cada bloque.
   - Diseño limpio, pensado para repasar rápido antes de un examen.
   - Guardar en `output/resumen-[tema].pdf` y mostrar el path completo.

## Regla estricta

Nunca inventes ni añadas contenido que no esté en los apuntes originales, aunque parezca que "falta algo" o el tema quede incompleto. Si un apunte es ambiguo o incompleto, señálalo como tal en el resumen ("no queda claro en tus apuntes: ...") en vez de rellenarlo con suposiciones.
