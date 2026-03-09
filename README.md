# chranama.github.io

Static GitHub Pages portfolio site.

## Routes

- `/` -> recruiter landing page
- `/case-study-extract-gating.html` -> LLM Extraction Platform case study
- `/case-study-biollm-robustness.html` -> BioLLM case study
- `/case-study-climate-anomaly-pipeline.html` -> Climate pipeline case study
- `/proof-portfolio.html` -> consolidated proof links and reviewer commands
- `/recruiter-brief.html` -> recruiter packet page
- `/brief-llm-extraction-platform.html` -> one-page flagship brief
- `/brief-biollm-finetune.html` -> one-page BioLLM brief
- `/brief-climate-pipeline.html` -> one-page climate brief
- `/resume.pdf` -> resume download
- `/masters_thesis.pdf` -> thesis download

## Local Files

- `index.html`
- `case-study-extract-gating.html`
- `case-study-biollm-robustness.html`
- `case-study-climate-anomaly-pipeline.html`
- `proof-portfolio.html`
- `recruiter-brief.html`
- `css/styles.css`
- `assets/favicon.svg`
- `assets/og-home-v2.svg`
- `assets/og-extract-gate.svg`
- `assets/og-biollm.svg`
- `assets/og-climate.svg`
- `assets/og-recruiter-brief.svg`
- `.github/workflows/site-checks.yml`
- `.pa11yci.json`

## Launch checklist

1. Replace `resume.pdf` with your final exported version from `website/resume.docx`.
2. Ensure `masters_thesis.pdf` is present and current.
3. Confirm hero/contact links and proof links in `index.html` are exact.
4. Push to `main`.
5. In GitHub repo settings, enable Pages from `main` / root.
6. Verify live site at `https://chranama.github.io`.
7. Confirm Actions workflow `site-checks` passes.
8. Refresh link card cache in LinkedIn Post Inspector after updates.

## Manual verification checklist

- Resume link downloads correctly.
- Core pages render and are readable on mobile and desktop.
- Keyboard tab order and focus rings are visible.
- Project and proof links resolve without searching.
- Footer "Last updated" is auto-rendered from page `document.lastModified`.
- OG metadata points to non-placeholder social preview images.

## Private artifacts

Role-targeted resume variants are stored outside the public site at:

- `../resumes/`
