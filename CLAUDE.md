# Portfolio Project — Standing Instructions

## Voice and writing standards

**Always apply the human-voice skill when writing or editing any prose on this site.** This includes article body content, home page copy, card excerpts, headlines, taglines, and CTA copy. It applies on first drafts AND on small surgical edits like a single sentence swap. After every prose write or edit, do a self-audit pass on the resulting paragraph before considering the edit done.

The rules below are non-negotiable for any text that ships on this site:

### Hard rules
1. **Zero em dashes (—) or en dashes (–) as sentence punctuation.** Hyphens in compound modifiers like "15-year career" or "in-person" are fine. After every prose edit, grep the file for `—` and `–` and confirm zero hits.
2. **No hedge-then-reveal patterns.** "It isn't X. It's Y." / "Not X, but Y." / "aren't the ones who… they're the ones who…" / "but internally" pivots after a public-claim setup. All of these set up a contradiction in a way that reads as AI rhetoric.
3. **No triple parallels.** "X, Y, and Z" where all three items have the same grammatical structure. "They're not X. They're not Y. They're just Z." Three short declarative sentences in a row making the same point. Break the symmetry by collapsing two items into a flowing clause, or rewriting one item in a different shape.
4. **No filler labels.** "And most importantly:", "Here's the thing:", "That said,", "Moreover,", "Furthermore,", "In other words," are all stock connective tissue. Cut.
5. **No "Stop X / Start Y" parallel constructions** as rhetorical closers.
6. **No fortune-cookie endings** or motivational-poster closers. End specific, or just stop when the thought is done.
7. **No overclaimed first-person reflection** ("I keep coming back to this," "I can't stop thinking about this") unless the topic genuinely is something TJ has been returning to repeatedly. Even when accurate, prefer concrete framing ("I've been pulling at this in the last few notes") over the stock phrase.
8. **No stat-stacking.** Multiple exact percentages in one paragraph reads as a report, not an essay. Round, gesture at magnitudes, keep one anchor stat if needed.

### Voice match
- TJ's voice is conversational, with long flowing sentences and mild run-on quality. Use connective tissue ("which," "because," "so that") to extend thoughts rather than chopping them into fragments.
- Don't drop in punchy two-word sentences for drama. That's the Substack-thought-leader rhythm and doesn't match TJ's actual writing.
- Match the rhythm of the existing articles in `/writing/`. When in doubt, read `the-role-agencies-dont-have-yet.html`, `efficiency-for-what.html`, and `ai-strategy-wrong-thing.html` for tone reference.

### Workflow rule
After ANY edit to article prose, home page copy, or any other user-facing text:
1. Re-read the changed paragraph end-to-end.
2. Scan for the patterns in the Hard Rules section above.
3. Run `grep -nE "—|–" path/to/file.html` to verify zero dashes.
4. Only then declare the edit done.

This applies on small edits, not just full drafts. Surgical edits are exactly where the patterns leak back in.

## Other project conventions

- Article files live in `/writing/[slug].html` using the standard template in existing files.
- Every new article gets a writing card added to the home page grid in `index.html`, placed as the newest entry.
- Footer last-edited date auto-updates on Netlify deploy via `scripts/update-last-edited.sh`.
- No new dependencies, no build tooling, no framework migrations. This is a static HTML site and stays that way.
