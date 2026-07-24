# Code Walkthrough

A chapter-based format for visualizing and explaining a codebase, module, or series of related changes as a knowledge transfer document, showing the full engineering story from foundation to finish.

---

## When to Use

Detect this archetype when:
- User mentions "walkthrough", "codebase", "explain the code", "onboarding", or "how it works"
- User wants to explain how a system, module, or feature is built
- Content involves multiple related files or changes that form a logical unit of work
- User wants to share code knowledge for onboarding or knowledge transfer
- User asks about cross-file dependencies or how components relate to each other
- Multiple related files, modules, or commits appear together in conversation

---

## Communication Goal

A code walkthrough tells a story: foundation, then feature, then polish. This format presents that narrative as a coherent document where someone new can understand the entire body of work in one sitting. The unique value is cross-file insight, showing how individual components relate to each other in ways that reading files in isolation cannot.

---

## Layout DNA

The page opens with a header synthesizing the overall goal of the codebase or feature, followed by three overview cards (Goal, Architecture, Key Decisions) and aggregate stats across all files. The centerpiece of the top section is a Module Map: a vertical pipeline of connected cards showing every key file or module in dependency order, each card displaying its chapter number, file path, purpose, and file type badge. This pipeline serves as both a table of contents and a navigation tool.

Below the Module Map, each file or module becomes a "chapter" using a card-based layout: What This Does cards, Why It Matters cards, key code concepts explained in plain English, and dependency cards. Chapters are separated by prominent dividers with chapter labels. A cross-file context callout appears in each chapter where relevant, explicitly stating how that file relates to others in the system.

For small codebases (2-4 files), all chapters are expanded. For larger systems (5+), chapters are collapsible with summaries always visible. The footer provides an overall narrative summary and architecture diagram.

---

## Interaction DNA

The Module Map pipeline is clickable. Tapping any card in the pipeline smooth-scrolls to that chapter in the page. This makes the Module Map function as persistent navigation even while reading deep into a chapter.

For collapsible chapters, clicking the summary expands the full chapter content. Hovering on Module Map cards highlights them with a border color change and shadow lift, providing clear affordance that they are interactive.

---

## Flavor Seeds

1. **The Graphic Novel.** Each chapter is an issue in a limited series. The Module Map is the cover gallery. Bold chapter headers break the narrative into episodes. Cross-file context cards read like "Previously in..." recap boxes. Visual storytelling through sequential art.

2. **The Geological Core Sample.** The codebase is a cross-section through layers of sediment. The bottom of the stack is the oldest/foundational stratum, the top is the most recent deposit. Each layer has a distinct texture and composition. The pipeline visualization is literally a vertical column of strata, reading the history of the codebase from bottom to top.

3. **The Train Route Map.** Each module is a station on a rail line. The Module Map is the transit diagram with color-coded lines and station markers. Express stops (key modules) are larger markers. Transfer points show where modules depend on each other. Clean, diagrammatic, wayfinding-focused.

4. **The Cookbook Chapter.** The overview is the recipe introduction. Each chapter is a course in the meal. Ingredients (dependencies) are listed, technique (approach) is explained, and plating (final result) is shown. Cross-file cards read like "while that is simmering, prepare the next element."

5. **The Space Mission Timeline.** The Module Map is a vertical launch sequence: ignition (foundation), ascent (core modules), orbit insertion (features), mission operations (integrations). Each chapter is a mission phase with status telemetry. Cross-file context cards are mission control callouts. Dark background, glowing status indicators.

---

## Required Data Elements

Every code walkthrough MUST include these elements. Missing any of these is a failure:

- **File paths** prominently displayed in the Module Map and chapter headers
- **System-level summary** -- overall Goal, Architecture, and Key Decisions (not just per-file summaries)
- **Module Map** -- visual pipeline showing all files/modules in dependency order
- **Dependency indicators** -- each chapter must state what it builds on (e.g., "Imports from utils/auth.ts")
- **Per-file stats** -- line count, export count, key functions/classes
- **Aggregate stats** -- total files, total lines, languages used

---

## Anti-Patterns

- Don't treat each file in isolation, because the system-level narrative (Goal/Architecture/Key Decisions) is the unique value this format provides over reading files individually.
- Don't show large code blocks in chapters, because plain English explanations are the point. Short 3-5 line snippets are acceptable for key concepts.
- Don't skip the Module Map, because the pipeline visualization is the table of contents and the primary navigation element.
- Don't make all chapters the same length, because some files are more important than others. Vary detail by significance.
- Don't forget cross-file context, because "Imports from auth.ts" is exactly what reading files individually cannot show.
- Don't use inconsistent chapter structure, because every chapter should follow the same layout for predictability and reduced cognitive load.
- Don't include too many details per chapter, because the reader is understanding the system, not reviewing every line. Keep it focused.
