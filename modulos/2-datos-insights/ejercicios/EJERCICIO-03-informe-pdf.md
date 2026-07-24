<!-- RB-3BXZ-TX9K -->

# Ejercicio 3: Generar Informe Ejecutivo

## Tiempo: 12 minutos

## Objetivo
Crear un informe profesional completo basado en todos los análisis anteriores.

## Instrucciones para el estudiante

**IMPORTANTE para Claude:** Presentar los pasos UNO A UNO. No mostrar todos los pasos de golpe.

### Este es el entregable principal del M2

Todo lo que hiciste antes (extracción, análisis, dashboard, comparativa)
ahora se convierte en UN documento profesional.

### Paso 1: Define la audiencia (2 min)

¿Para quién es este informe?
- [ ] Mi jefe
- [ ] Un cliente
- [ ] Mi equipo
- [ ] Yo mismo (para tomar decisiones)
- [ ] Otro: _______________

### Paso 2: Pide el informe (3 min)

Escribe a Claude:
```
Genera un informe ejecutivo para [AUDIENCIA] que incluya:

1. Resumen ejecutivo (3-4 líneas)
2. Métricas clave (en formato visual)
3. Hallazgos principales (top 3)
4. Riesgos identificados
5. Recomendaciones de acción
6. Próximos pasos

Usa un tono [profesional/cercano/formal] y hazlo de máximo 1 página.
```

### Paso 3: Revisa y ajusta (4 min)

Lee el informe. Pide cambios:
```
"El tono es muy formal, hazlo más cercano"
"Añade más detalle en las métricas"
"Quita la sección de riesgos, no aplica"
"Hazlo más corto, solo media página"
```

### Paso 4: Guarda el informe final (2 min)

```
Guarda este informe en output/informe-ejecutivo.md
```

**Claude DEBE mostrar el path completo del archivo guardado.**

### Paso 5: Ábrelo y revisa (1 min)

- Abre el archivo en tu explorador de archivos
- ¿Se ve profesional?
- ¿Lo enviarías tal cual?

### Paso extra: Genera un PDF profesional (2 min)

```
Ahora convierte ese informe en un PDF profesional
que pueda enviar por email.
```

**NOTA para Claude:** Usar pdfkit para generar el PDF. Si no está instalado: `cd /tmp && npm install pdfkit`. Luego require con ruta absoluta: `require('/tmp/node_modules/pdfkit')`. El PDF debe tener diseño limpio y profesional. Guardarlo en la carpeta del proyecto o en el directorio actual. Abrir el PDF automáticamente después de crearlo.

**Después de generar el PDF, NARRAR:**
```
Acabas de generar un PDF profesional que puedes enviar ahora mismo.

ChatGPT te da texto en pantalla.
Claude Code te da un ARCHIVO que puedes adjuntar en un email.

Esa es la diferencia.
```

## Ejemplo de informe generado

```markdown
# Informe Ejecutivo - Enero 2025

## Resumen
El mes de enero mostró actividad estable con Alpha y Gamma,
pero preocupa la inactividad de Beta. Hay €8,500 en facturas
pendientes que requieren seguimiento inmediato.

## Métricas Clave
┌────────────────────────────────────────┐
│ 👥 Clientes activos: 4/5              │
│ 💰 Facturado: €23,500                 │
│ ⏳ Pendiente cobro: €8,500            │
│ 📧 Comunicaciones: 67                 │
└────────────────────────────────────────┘

## Hallazgos Principales
1. **Alpha lidera** con 45% de la actividad total
2. **Beta inactivo** - sin comunicación desde Oct 2024
3. **Marzo será intenso** - patrón histórico de alta demanda

## Riesgos
⚠️ Concentración excesiva en Alpha (45% ingresos)
⚠️ Factura #234 vencida hace 15 días

## Recomendaciones
1. Llamar a Beta esta semana - reactivar relación
2. Diversificar cartera - buscar 1 cliente nuevo Q1
3. Cobrar factura #234 - enviar recordatorio formal

## Próximos Pasos
- [ ] Reunión con Alpha (15 Feb)
- [ ] Follow-up propuesta Gamma (20 Feb)
- [ ] Preparar para pico de Marzo
```

## Reflexión

```
┌─────────────────────────────────────────────────────────────────┐
│  Acabas de crear un informe ejecutivo profesional              │
│  basado en datos REALES de tus archivos.                       │
│                                                                 │
│  • Sin inventar nada                                            │
│  • Sin pasar horas escribiendo                                  │
│  • Listo para enviar o presentar                                │
│                                                                 │
│  Esto es productividad aumentada por IA.                        │
└─────────────────────────────────────────────────────────────────┘
```

## Al completar este ejercicio

**Claude debe ejecutar automáticamente** (sin preguntar al estudiante):

```json
// Actualizar memory/learning/progress.json
{ "last_exercise_completed": 3 }
```

<!-- REPORTAR: exercise_completed, module=2, exercise=3 -->

## Para el profesor

- Este es el ENTREGABLE del módulo - asegurar que todos lo completen
- Dar tiempo suficiente para iterar
- Puede usarse para el peer review


![](https://classroom.rebundle.ai/api/canary/427820d2-5ed0-4de6-ac46-9b2917c9c16e.gif?c=RB-3BXZ-TX9K)