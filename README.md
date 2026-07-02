# chranama.github.io

Single-page static GitHub Pages portfolio site.

## Route

- `/` -> minimalist portfolio hub

## Local Files

- `index.html`
- `css/styles.css`
- `assets/favicon.svg`
- `assets/og-home-v2.svg`
- `resume.pdf`
- `masters_thesis.pdf`

Supporting PDFs from prior one-page briefs may remain in the repository, but they are no longer part of the site navigation.

## Content Model

The website is intentionally lightweight. Detailed proof surfaces live in the portfolio repository READMEs:

- [`MealCheck`](https://github.com/chranama/MealCheck)
- [`llm-extraction-platform`](https://github.com/chranama/llm-extraction-platform)
- [`inference-serving-gateway`](https://github.com/chranama/inference-serving-gateway)
- [`biollm-finetune`](https://github.com/chranama/biollm-finetune)

## Launch Checklist

1. Confirm `resume.pdf` is current.
2. Confirm `masters_thesis.pdf` is current if linked.
3. Confirm `https://mealcheck.dev` and all repository links in `index.html` resolve.
4. Push to `main`.
5. Verify live site at `https://chranama.github.io`.
6. Confirm Actions workflow `site-checks` passes.
7. Refresh link card cache in LinkedIn Post Inspector after updates.

## Manual Verification Checklist

- Homepage renders cleanly on mobile and desktop.
- Resume link downloads correctly.
- Repository links resolve without searching.
- Keyboard tab order and focus rings are visible.
- Footer "Last updated" is auto-rendered from page `document.lastModified` into `[data-last-updated]`.
- OG metadata points to a non-placeholder social preview image.

## Private Artifacts

Role-targeted resume variants are stored outside the public site at:

- `../resumes/`
