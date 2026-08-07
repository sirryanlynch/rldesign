# Meta SLA Performance Dashboard

Experis-branded micro-site that modernizes the Meta Metrics SLA reporting. Replaces the
Excel-embedded views with an interactive dashboard: program RAG cards, an SLA heatmap,
per-metric trend charts, program drill-downs, and an automated data-quality panel.

## Live site
Published via GitHub Pages: **https://experis-ds.github.io/MetaQuest/**

## How it works
- `index.html` — the entire dashboard (HTML + CSS + JS in one file). Brand styling uses the
  Experis token system.
- `assets/data.json` — the weekly data feed (normalized from `WeeklyInput_Fact`). The page also
  embeds a copy of this feed so it renders offline (`file://`) as well as when hosted.
- `assets/` — Experis logos, favicons, and the data feed.

## Updating the data each week
Regenerate `assets/data.json` from the latest weekly export, re-embed it into `index.html`,
then commit + push. Once the source feed is automated (see the modernization spec), this becomes
a scheduled refresh.

---
Confidential — Experis / ManpowerGroup · Meta program reporting.
