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

# Módulo 2: Los Datos → Los Insights

## Instrucciones para Claude

Este módulo dura 2 horas (con almuerzo al final).
Guía al estudiante a través de la experiencia de extraer datos, encontrar patrones y generar informes profesionales.

**IMPORTANTE:** Este módulo tiene 3 ejercicios en `ejercicios/`. Leer y seguir cada ejercicio en orden cuando se indique. Presentar un ejercicio a la vez, no todos de golpe.

**NOTA:** El setup (verificacion, nombre, OS, rol) ya se hizo en el flujo de inicio definido en CLAUDE.md. NO repetir aquí. Antes de empezar, verificar que `memory/learning/preferences.json` existe y contiene `student_name`, `os` y `role`. Si falta alguno, volver al flujo de onboarding de CLAUDE.md antes de continuar.

---

## Flujo del Módulo

### Parte 1: De los Datos a los Insights (~14 min)

**NARRAR:**

```
Tus archivos están organizados. Bien.
Pero el oro de verdad está DENTRO de ellos.

¿Alguna vez has tenido que abrir 20 documentos uno por uno
para encontrar un dato concreto? ¿Una fecha, un número, un nombre?

Hoy eso se acaba. Y vamos más allá: de esos datos sacaremos
patrones ocultos y los convertiremos en un dashboard visual.
Sin Excel. Sin herramientas de BI. Sin fórmulas.
```

> 📋 **Ejercicio 1:** Abrir y seguir `ejercicios/EJERCICIO-01-patrones-dashboard.md` (14 min)
> El estudiante extrae una tabla de datos, descubre patrones ocultos y crea un dashboard visual con Chart.js.
> Cuando termine, preguntar: "¿Listo para comparar?"

**Después del ejercicio, NARRAR:**

```
Claude acaba de leer todos tus documentos sin que abrieras ninguno,
encontró patrones que no habías notado y los pintó en un dashboard.
Piensa en eso un momento.
```

---

### Parte 2: Comparativa (~6 min)

**NARRAR:**

```
Los datos solos no dicen mucho.
Las COMPARACIONES revelan tendencias.
```

> 📋 **Ejercicio 2:** Abrir y seguir `ejercicios/EJERCICIO-02-comparativa.md` (6 min)
> Cuando el estudiante termine, continuar con Parte 3.

**🔥 Hack avanzado:** Encadena análisis: "Compara el dashboard que hicimos con la comparativa y dime si hay contradicciones". Claude puede cruzar los resultados de ejercicios anteriores para encontrar inconsistencias o confirmar tendencias.

---

### Parte 3: Informe Ejecutivo (~12 min)

Datos extraídos, patrones identificados, dashboard creado. Ahora el paso final: convertir todo eso en un documento profesional que puedas enviar a tu jefe, a un cliente, o usar en una reunión.

> 📋 **Ejercicio 3:** Abrir y seguir `ejercicios/EJERCICIO-03-informe-pdf.md` (12 min)
> Cuando el estudiante termine, continuar con Parte 4.

**Después del ejercicio, NARRAR:**

```
Acabas de crear un PDF profesional que puedes enviar ahora mismo.

ChatGPT te da texto en pantalla.
Claude Code te da un ARCHIVO que puedes adjuntar en un email.

Esa es la diferencia.

Y fíjate en algo más: lo que acabas de hacer es un posible prompt reutilizable.
En el Módulo 3 lo convertiremos en un comando /informe-mensual —
y podrás ejecutarlo cada lunes por la mañana en 30 segundos.

Antes: escribir el prompt, esperar, guardarlo.
Después: /informe-mensual (y ya).

Eso no es una herramienta. Es un superpoder.
```

**🔥 Hacks avanzados (mostrar y preguntar "¿probamos o seguimos?"):**

- **Tres tonos, un contenido:** "Genera tres versiones del informe: una para mi jefe (formal), una para mi equipo (cercano) y una para un cliente (comercial)". Mismo contenido, tres tonos, en segundos.
- **PowerPoint:** Claude puede generar un archivo `.pptx` directamente. Prueba: "Convierte este informe en una presentación de 5 slides". También existe **"Claude by Anthropic for PowerPoint"** en el marketplace de Microsoft: permite editar presentaciones con IA desde dentro de la aplicación.

---

### Parte 4: Peer Review (15 min)

```
Antes de continuar, comparte tu informe con tu compañero.

Usa /peer-review para ver las preguntas de discusión.
```

**Dar tiempo para que hablen. Cuando escriban LISTO, seguir el flujo definido en el comando /peer-review.**

---

### Parte 5: Cierre del Módulo (5 min)

```
¡Excelente trabajo en el Módulo 2!

Aprendiste:
✅ Extraer datos estructurados de múltiples archivos
✅ Encontrar patrones e insights ocultos
✅ Crear dashboards visuales con Chart.js sin herramientas de BI
✅ Hacer análisis comparativos para tomar decisiones
✅ Generar informes ejecutivos profesionales en PDF

🚀 ¡Vamos al Módulo 3!

Almuerzo: 1 hora
```

**Tras el almuerzo**, ejecutar AUTOMÁTICAMENTE el skill `/desbloquear` (sin preguntar al alumno, sin mencionar variables internas). El skill detectará que no se requiere código y avanzará directamente al siguiente módulo.


---

## Criterios de Éxito

- [ ] Extrajo datos en tabla, encontró patrones y creó dashboard visual con Chart.js (ejercicio 1)
- [ ] Hizo un análisis comparativo (ejercicio 2)
- [ ] Generó un informe ejecutivo en PDF (ejercicio 3)
- [ ] Hizo peer review con su compañero

---

## Si se Atasca

- Problemas técnicos → "Levanta la mano, el profesor te ayuda"
- No sabe qué datos extraer → Sugerir facturas, correos o fechas como punto de partida
- No encuentra patrones → Dar preguntas concretas: "¿Quién es tu cliente más activo?"
- Va muy rápido → Sugerir explorar variaciones o ayudar a otros
- Va muy lento → Ofrecer ayuda, simplificar el ejercicio


![](https://classroom.rebundle.ai/api/canary/4f0a96a0-71df-4a91-9cb4-0ec570c963e1.gif?c=RB-3BXZ-TX9K)