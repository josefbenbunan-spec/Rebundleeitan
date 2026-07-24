---
name: viz
description: Visualize anything as a beautiful, distinctive HTML page and deploy to Vercel. Use for session summaries, code explainers, data reports, onboarding guides, work summaries, meeting prep, presentations, experiment reports, and more. Produces production-grade interfaces with exceptional design quality.
argument-hint: <what to visualize>
allowed-tools: Read, Write, Edit, Bash, Glob, Grep, Task, AskUserQuestion, WebFetch
---

<!-- IDIOMA: respeta el idioma de la conversación con el usuario.
     - Si la conversación ya tiene historial, sigue ese idioma.
     - Si no hay historial claro o es la primera interacción, lee
       settings.json (campo `language`: "es" o "en") y responde
       en ese idioma.
     - El contenido fuente está en español; cuando language="en",
       traduce al vuelo manteniendo nombres propios y IDs.
     - Si el usuario pide cambiar idioma, edita settings.json
       local (`language`) y continúa en el nuevo idioma. -->

# Viz Skill

**Tagline**: "Visualize anything. HTML is your canvas."

Transform content into a beautiful, distinctive, interactive HTML page and deploy to Vercel for sharing. Every visualization is unique -- no generic "AI output" aesthetics.

## Invocation

```
/viz <natural language instruction>
```

## Examples

```bash
/viz summarize our conversation
/viz explain how the auth system works
/viz the query results as a dashboard
/viz a quick-start guide for new devs
/viz my work this week
/viz a presentation on our Q4 results
/viz an experiment report for the A/B test
/viz compare Redis vs Memcached for our use case
```

---

## Output Rules (Non-Negotiable)

This skill produces **exactly one type of output**: a self-contained HTML file.

**DO:**
- Write HTML to `$WORKSPACE/index.html` using the `Write` tool
- Deploy via `vercel deploy` using `Bash`
- Read files with `Read`, `Glob`, `Grep` to gather content

**DO NOT:**
- Create any other file type as the deliverable (no PDFs, no docs, no slides)
- Skip the deploy step

If the user asks for a "presentation", "slides", or "deck" -- create an **HTML presentation** with fullscreen slides and keyboard navigation, NOT a separate tool. HTML is always the output format.

---

## Workflow

### Step 1: Parse Intent

Analyze the user's instruction from `$1`:

1. **Identify content source**:
   - Current conversation context
   - Files/code in the workspace
   - Data/query results mentioned
   - External resources to gather

2. **Determine if clarification needed**:
   - If intent is crystal clear -> proceed to archetype detection
   - If ambiguous -> ask clarifying questions (Step 2)

### Step 2: Clarify (If Needed)

When the instruction is ambiguous, use AskUserQuestion to clarify:

**Content scope:**
- What content to include?
- Full conversation or specific parts?

**Format:**
- Presentation slides? Data report? Infographic? Or let me pick the best format?

**Audience:**
- Technical team? Executives? Broad org?

Offer recommendations based on the content type.

### Step 3: Detect Archetype

Match the content to the most appropriate visualization archetype. Use these signals:

| Archetype | Detection Signals |
|-----------|------------------|
| **Presentation Deck** | "slides", "presentation", "deck", "pitch", "talk"; content is sequential/narrative for an audience |
| **Experiment Report** | "experiment", "A/B test", "results", "analysis"; data with hypothesis/methodology |
| **Technical Proposal** | "proposal", "RFC", "design doc", "architecture"; problem + proposed solutions |
| **Visual** | "infographic", "diagram", "visual", "chart", "one-pager", "architecture diagram"; embeddable graphics, system diagrams, visual explainers |
| **Session Summary** | "summary", "recap", "worklog", "meeting notes"; timeline of events/decisions |
| **Dashboard** | "dashboard", "status", "metrics", "KPIs"; numeric health/monitoring data |
| **Comparison Matrix** | "compare", "comparison", "evaluation", "vs"; evaluating options against criteria |
| **FAQ / Reference** | "FAQ", "reference", "guide", "runbook", "how-to"; Q&A or step-by-step instructions |
| **PR Review** | "PR", "pull request", "review", "my changes", "what changed"; a GitHub pull request or local uncommitted changes |
| **Code Walkthrough** | "walkthrough", "codebase", "explain the code", "onboarding", "how it works"; explaining a codebase, module, or series of related changes |
| **Incident Report** | "incident", "outage", "postmortem", "downtime", "root cause"; incident briefing with timeline and follow-up actions |
| **Project Roadmap** | "roadmap", "project plan", "milestones", "phases", "where are we"; project progress with timeline strip and phase cards |
| **Graph** | "knowledge graph", "graph", "network", "connections", "map", "relationships"; entities with relationships, skill ecosystems, interconnected systems |
| **Freestyle** | None of the above match well; content is unique or mixed |

**If unsure between archetypes:** Pick the closest match and adapt. The archetype is an inspiration, not a constraint.

**If no archetype fits:** Skip to Step 5 and generate freely using only the shared design system principles.

### Step 4: Load Design References

Read the design reference files from the `references/` directory adjacent to this SKILL.md.

1. **Always read `references/_principles.md`** -- Creative guardrails: anti-slop rules, the creative brief template, typography/color/motion/composition guidance. This is loaded every time.
2. **Read the matched archetype brief** (from Step 3) -- Each archetype file is a ~70-line design brief describing communication goal, layout DNA, interaction DNA, flavor seeds, and anti-patterns. NO HTML templates -- these are conceptual guidance that inspires unique output:
   - `references/presentation-deck.md`
   - `references/experiment-report.md`
   - `references/technical-proposal.md`
   - `references/visual.md`
   - `references/session-summary.md`
   - `references/dashboard.md`
   - `references/comparison-matrix.md`
   - `references/faq-reference.md`
   - `references/pr-review.md`
   - `references/code-walkthrough.md`
   - `references/incident-report.md`
   - `references/project-roadmap.md`
   - `references/graph.md`
3. **Optionally read `references/components.md`** -- Opt-in building blocks (metric cards, callouts, tables, timelines, etc.) when your design needs them. Don't force-include all components.
4. **Freestyle (no archetype matched)**: Read only `_principles.md` and design freely.

**These are design briefs, not templates.** Each archetype provides flavor seeds -- evocative visual metaphors that spark wildly different designs. Pick one that excites you, or invent your own.

### Step 5: Complete the Creative Brief

Before writing any HTML, you MUST complete the creative brief from `_principles.md`. Do not skip any question. Your design should flow from these answers:

1. **PURPOSE** -- What is this communicating? Who is the audience?
2. **METAPHOR** -- What visual world does this content belong to? Not "dashboard" but "mission control room." Not "report" but "field journal." The metaphor guides every downstream decision.
3. **TYPOGRAPHY** -- Name two specific Google Fonts. Articulate WHY they fit this content's emotional register. Never reuse the same pairing twice.
4. **PALETTE** -- Name ONE dominant hue and explain why it matches the content's mood. Then pick an accent.
5. **SIGNATURE** -- What ONE thing will make someone remember this visualization? Describe it in one sentence.
6. **COMPOSITION** -- Dense or spacious? Scrolling or fixed? Centered or full-bleed? Grid or organic? Why?

Then proceed to generate.

### Step 6: Gather Content

Based on the instruction, gather the content:

- **For session summaries**: Review conversation history, extract key points, decisions, action items
- **For code explainers**: Read relevant files, understand architecture, create diagrams
- **For data reports**: Collect metrics, analyze trends, prepare visualizations
- **For documentation**: Organize information, create clear sections
- **For presentations**: Distill into one-idea-per-slide structure
- **For experiment reports**: Structure as hypothesis -> method -> results -> interpretation

Content sources: conversation context, local files (Read/Glob/Grep), and public URLs (WebFetch).

### Step 7: Generate HTML

Create the HTML file from your creative brief and the archetype inspiration.

1. **Create workspace** in the current working directory:
   ```bash
   SLUG=$(echo "$INSTRUCTION" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | cut -c1-50)
   WORKSPACE="$(pwd)/viz/$SLUG"
   mkdir -p "$WORKSPACE"
   ```

2. **Compose HTML** following these rules:
   - Start with a clean `<!DOCTYPE html>` -- design from scratch guided by your creative brief
   - **Copy ALL THREE blocks from `assets/infra.html`** (read the file first). This is the hamburger menu infrastructure. You MUST include all three -- missing any one breaks the menu:
     1. **CSS block** (`<style>` with `.viz-menu`, `.viz-menu-toggle`, `.viz-menu-panel`, `.viz-menu-item` classes + print styles + reduced-motion) -> paste into `<head>` or before `</body>`. **This is the most commonly forgotten block -- double-check it's present.**
     2. **HTML block** (`<nav class="viz-menu">` with toggle button and menu panel) -> paste at the start of `<body>`
     3. **JS block** (`<script>` with `toggleMenu`, `toggleTheme`, `toggleFullscreen`, `saveAsImage` + html2canvas CDN) -> paste before `</body>`
     Do NOT rewrite, abbreviate, or cherry-pick. Copy verbatim. **Every visualization MUST include all three blocks.**
   - Load **Google Fonts** matching your chosen typography (never system fonts)
   - Define **CSS custom properties** for your unique color palette with proper dark mode redesign
   - Include **page-load animation** (entrance reveals via `animation-delay`)
   - Only load CDN dependencies (D3, Chart.js, Mermaid) when actually used
   - Pick building blocks from `references/components.md` as needed -- don't include all of them
   - Respect the archetype's **anti-patterns** -- these are the guardrails
   - Draw from the archetype's **flavor seeds** for visual inspiration, or invent your own
   - Make it **distinctive** -- if it looks like the last visualization you generated, start over

3. **Save to workspace**:
   - `$WORKSPACE/index.html` - Main visualization
   - `$WORKSPACE/metadata.json` - Title, timestamp, instruction, archetype used

4. **Set `$TITLE`** -- a short, human-readable title for the visualization (e.g. "Q4 Experiment Results", "Auth System Architecture"). This is used as the deployment name. Derive it from the creative brief's PURPOSE, not the slug.

### Step 8: Open Locally

**Open the visualization in the default browser immediately after generating HTML.**

```bash
open "$WORKSPACE/index.html"
```

On Linux, use `xdg-open` instead of `open`.

### Step 9: Deploy to Vercel (Only When Asked)

**Only deploy if the user's instruction contains keywords like "deploy", "share", "publish", or "send".** Otherwise, skip this step entirely.

```bash
cd "$WORKSPACE" && vercel deploy --yes --name "viz-$SLUG" 2>&1
```

If `vercel` is not installed or not authenticated, inform the user:
```
Install Vercel CLI: npm i -g vercel
Authenticate: vercel login
```

### Step 10: Report Success

**Format depends on whether deployment was requested.**

**Default (local only):**
```
Visualization ready!

./viz/{slug}/index.html

{Brief 1-2 sentence summary of what was visualized}
Archetype: {archetype used, or "Freestyle"}

Tip: Add "deploy" or "share" to your /viz prompt to publish to Vercel.
```

**When deployed:**
```
Visualization deployed!

https://viz-slug-xxxxx.vercel.app

Local: ./viz/{slug}/index.html

{Brief 1-2 sentence summary of what was visualized}
Archetype: {archetype used, or "Freestyle"}
```

Note: Vercel deployments are public by default.
