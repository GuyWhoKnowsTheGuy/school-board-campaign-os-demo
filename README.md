# School Board Campaign Operating System

Reference implementation: Community Consolidated School District 46 (CCSD 46), Grayslake / Lake County, Illinois.

This project is an open-source campaign operating system for first-time school board candidates. It is not a CRM, website builder, compliance product, or generic project-management app. It is an integrated operating system: readiness assessment, district intelligence, political terrain, workflows, templates, checklists, tribal knowledge, and postmortem learning loops.

Product promise:

> The iPhone for school board campaigns. Tribal Knowledge Included.

Primary user: a trusted first-time candidate who is intelligent, community-minded, and inexperienced in campaign operations.

## What is included

- Working interactive Mission Control dashboard: `index.html`
- CCSD 46 reference data: `data/ccsd46.json`
- Complete system architecture: `docs/architecture.md`
- Information architecture: `docs/information-architecture.md`
- Data model: `docs/data-model.md`
- Dashboard specification: `docs/dashboard-specification.md`
- Candidate onboarding workflow: `docs/candidate-onboarding-workflow.md`
- Candidate readiness assessment system: `docs/readiness-assessment.md`
- Tribal knowledge framework: `docs/tribal-knowledge-framework.md`
- Michelle Anderson validation framework: `docs/michelle-anderson-validation-framework.md`
- Open-source governance model: `docs/open-source-governance.md`
- Scaling roadmap: `docs/scaling-roadmap.md`
- Source index: `sources/source-index.md`

## Run locally

From the project root:

```powershell
python -m http.server 8787
```

Then open:

```text
http://127.0.0.1:8787/
```

No build step is required. The dashboard is static HTML/CSS/JS and persists candidate inputs in browser localStorage.


## TV Lawyer

The dashboard includes a `TV Lawyer` legal due-diligence panel. It is clearly branded with the slogan “I’m not a lawyer, but I play one on TV.” and an explicit disclaimer: it is not legal advice, not a real lawyer, not a replacement for qualified counsel, and not something to rely on for legal decisions. It is designed to help candidates prepare better questions for counsel, Lake County Clerk, ISBE, IASB, or the relevant authority.

When served through `server.py`, TV Lawyer posts to the local AI endpoint with `mode: "tv-lawyer"`; the backend prompt forbids file edits and returns `reload: false`. On static hosting such as GitHub Pages, the panel generates a copy/paste ChatGPT prompt instead of failing silently.

## Legal/compliance warning

This is educational, exploratory, and operational planning software. It is not legal advice. Filing requirements, petition rules, campaign finance duties, and deadlines must be verified with the Lake County Clerk, Illinois State Board of Elections, and qualified counsel before use in a real campaign.
