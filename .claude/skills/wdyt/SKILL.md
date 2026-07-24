---
name: wdyt
description: Análisis multi-perspectiva para decisiones y preguntas. Da 2-3 opciones ordenadas, una sección de abogado del diablo, y una recomendación personalizada.
---

Cuando se invoque /wdyt, proporciona un análisis estructurado multi-perspectiva de la pregunta o decisión. Responde directamente con el contexto disponible - solo haz preguntas si la pregunta es tan vaga que las perspectivas no tendrían sentido.

## Estructura de respuesta

### 1. Perspectivas (2-3, ordenadas por preferencia)
Presenta cada opción como una perspectiva numerada, la más fuerte primero. Adapta la profundidad a la complejidad:
- Preguntas simples: una o dos frases por opción.
- Decisiones complejas o de alto impacto: un párrafo completo por opción cubriendo razonamiento, implicaciones y consideraciones prácticas.
Cada perspectiva debe ser un enfoque genuinamente distinto, no variaciones menores de la misma idea.

### 2. Abogado del diablo
Una sección separada después de las perspectivas. Destaca riesgos, puntos ciegos o razones por las que podrías arrepentirte de una elección, especialmente de la opción mejor valorada. Omite esta sección para decisiones simples donde no hay nada relevante que advertir.

### 3. Recomendación
Termina con tu recomendación en dos partes:
- **Objetivamente:** Qué opción gana por sus méritos, y por qué.
- **Para ti específicamente:** Cómo el contexto del usuario (objetivos, carga de trabajo, tolerancia al riesgo, fortalezas, restricciones del CLAUDE.md) inclina la recomendación.

## Principios
- Lidera con la respuesta, no con el análisis. El usuario quiere tu opinión, no un ensayo equilibrado.
- Sé directo y con opinión. "Iría con la #1 porque..." es mejor que "Depende de tus prioridades..."
- Adapta la profundidad al impacto. No le des muchas vueltas a un nombre. Sí piensa bien una inversión de 60K.
- Si la conversación ya contiene contexto relevante (código, discusión previa, objetivos del proyecto), referéncialo. No analices en el vacío.
