# chranama.github.io

Static GitHub Pages portfolio site.

## Routes

- `/` -> recruiter landing page
- `/case-study-llm-extraction-platform.html` -> LLM Extraction Platform flagship case study
- `/case-study-extract-gating.html` -> redirect to the flagship LLM Extraction Platform case study
- `/case-study-inference-serving-gateway.html` -> Inference Serving Gateway case study
- `/case-study-biollm-robustness.html` -> BioLLM case study
- `/case-study-climate-anomaly-pipeline.html` -> Climate pipeline case study
- `/recruiter-brief.html` -> recruiter packet page
- `/lessons-learned.html` -> cross-project engineering judgment page
- `/brief-llm-extraction-platform.html` -> one-page flagship brief
- `/brief-biollm-finetune.html` -> one-page BioLLM brief
- `/brief-climate-pipeline.html` -> one-page climate brief
- `/resume.pdf` -> resume download
- `/masters_thesis.pdf` -> thesis download

## Local Files

- `index.html`
- `case-study-llm-extraction-platform.html`
- `case-study-extract-gating.html`
- `case-study-inference-serving-gateway.html`
- `case-study-biollm-robustness.html`
- `case-study-climate-anomaly-pipeline.html`
- `recruiter-brief.html`
- `lessons-learned.html`
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

1. Replace `resume.pdf` with your final exported version from the local resume build output.
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
- Footer "Last updated" is auto-rendered from page `document.lastModified` into `[data-last-updated]`.
- OG metadata points to non-placeholder social preview images.

## Private artifacts

Role-targeted resume variants are stored outside the public site at:

- `../resumes/`
