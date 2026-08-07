# Ryan Lynch — Portfolio

Single-page portfolio with four fully embedded internal tools.

```
index.html                 the portfolio (open this)
tools/                     the real, launchable tool builds — must stay next to index.html
Start Portfolio.command    double-click to preview locally over http
```

## Preview it locally

Double-click **`Start Portfolio.command`**. It serves the folder and opens your browser.
Leave the Terminal window open while you review; close it when done.

> First run: if macOS blocks it, right-click the file → **Open** → **Open**. You only do this once.

Serving over `http://` (instead of double-clicking `index.html` as a `file://`) is what makes
every embedded tool — MetaQuest, Microsite, Single Origin, BankIQ — load reliably.

## Put it online (to share with hiring managers)

It's all static files, so any static host works. Easiest options:

- **Netlify Drop** — go to app.netlify.com/drop and drag this whole folder in. Instant URL.
- **Cloudflare Pages / GitHub Pages** — push the folder to a repo and point the host at it.

Keep `index.html` and the `tools/` folder together, at the root. Everything has been
validated for hosting: all internal links resolve (case-sensitive-safe), the Single Origin
content library is wired, and the embedded tools load over http.

You can optionally leave `README.md` and `Start Portfolio.command` out of the upload —
they're just for local use and aren't needed on the live site.

## Notes

- **MetaQuest** launches behind its password gate — password: `metaverse`.
- **BankIQ** and the tool previews run on synthetic data.
- **Single Origin** loads its full content library; every item is clickable except
  **Candidate Tracker**, which had no file in the source zip. Add that build to
  `tools/single-origin/content/poc-demos/candidate-tracker/index.html` and set its
  status to `ready` to light it up.
- Portfolio images are pulled from live CDNs (Webflow, Cruz Foam). For a fully
  offline-proof copy, download those into the folder and repoint the `src`s.
