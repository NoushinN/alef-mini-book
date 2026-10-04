# It Starts with Alef

**A little journey into reading Persian** — an editable, illustrated 48-page mini book by A World in Alef.

This project contains the complete first manuscript, not chapter placeholders: 12 chapters, six story moments, three story illustrations, eight-letter instruction, 39 numbered activities, answers, a reference chart and a seven-day return plan. The picnic story has a beginning, a windy interruption and a sheltered ending. English carries the full narrative; independent Persian reading is restricted to taught material.

## Start in RStudio

1. Extract this project into a new folder, separate from your course and public website repositories.
2. Open `It-Starts-with-Alef.Rproj`.
3. In the **R Console**, run once:

```r
source("scripts/setup.R")
```

4. Preview your local blogdown website:

```r
blogdown::serve_site()
```

Edit a chapter, save, and the preview updates. No external Hugo theme, Python, LaTeX, account or deployment is needed for the RStudio workflow. Setup needs internet to install packages and Hugo. PDF export needs Chrome or Microsoft Edge installed.

## Make one PDF containing all chapters

From the project root:

```r
source("scripts/render_book.R")
```

The script builds the site, assembles the **same chapter content** into the full-book page, and prints it to:

- `output/It-Starts-with-Alef.pdf`
- `output/html-edition/book/index.html` with accompanying images and fonts

The ZIP already includes a generated 48-page PDF in `output/`. You can read it immediately. Keep the `html-edition` folder together when moving its HTML file.

This workflow does not ask Pandoc to produce a Persian LaTeX PDF. Hugo renders the source and the browser handles Persian shaping and PDF output. You do not need the Python renderer from the earlier teaching repository.

## What to edit

| File/folder | Purpose |
|---|---|
| `content/chapters/01.md` to `12.md` | The authoritative text for all chapters |
| `assets/book.css` | Fonts, print dimensions, spacing, colours and page design |
| `static/images/` | Story illustrations, emblem and feather art |
| `layouts/book/print.html` | Collects all chapters in `weight` order into one book |
| `layouts/` | Local website pages and navigation |
| `hugo.yaml` | Website title and base URL |
| `scripts/render_book.R` | RStudio PDF/HTML export command |
| `docs/editorial-guide.md` | Teaching sequence, style and editing safeguards |
| `docs/story.md` | Narrative summary and illustration notes |
| `docs/validation.md` | Checks performed and remaining review |

Each chapter is a UTF-8 Markdown file with HTML page sections for precise bilingual layout. In RStudio use **Source** mode. Edit the words inside `<p>`, `<h2>` and other tags; retain the tags around them. Persian spans use `lang="fa" dir="rtl"` so they display correctly inside English text.

Example:

```html
<p>Read the word from right to left.</p>
<div class="reading" lang="fa" dir="rtl">آب</div>
```

Every `<section class="book-page">` starts a print page. The `weight` field controls chapter order. Page numbers and cross-references are explicit for the first 48-page edition. If you add/reorder pages, update the contents, page IDs, folios, chapter `pages` fields and references. If you add too much text, a browser may overflow onto an extra page: always proof the final PDF. Short paragraphs and generous space are intentional.

Do not edit `public/`: it is rebuilt automatically.

## Put this into a private GitHub repository

No remote repository was created for you. Suggested name: **alef-mini-book**.

1. On GitHub choose **New repository**, name it, select **Private**, and initialise with a README.
2. Copy its clone URL.
3. In RStudio: **File > New Project > Version Control > Git**. Paste that URL and choose a new local folder.
4. Copy the extracted project files into the clone, replacing its starter README. Include the supplied Git ignore and R configuration files. Keep the Git directory created by cloning.
5. Open `It-Starts-with-Alef.Rproj`, use RStudio's Git pane to stage the source files, commit, and push.
6. Check on GitHub that the repository displays **Private**.

For later work: Pull → edit chapter files → preview → render PDF → commit → push. Generated `public/` and `output/` are ignored to keep Git focused on the editable source. Keep final PDFs separately, or deliberately remove `output/` from `.gitignore` if you want to version your exports.

This project has **no deployment workflow**. A private source repository does not automatically make a published website private. Do not enable Pages or another host unless you intend that audience to see the book. `noindex` is included for author previews, but it is not password protection.

## Troubleshooting

- **Wrong working directory:** reopen the supplied `.Rproj` and check `getwd()`.
- **Package version already loaded:** update packages, then restart R via Session > Restart R before rerunning.
- **Chrome not found:** install Chrome/Edge or set `Sys.setenv(PAGEDOWN_CHROME = "C:/full/path/to/chrome.exe")` before rendering. Use the actual installed executable path.
- **PDF overflow after editing:** shorten the page or add a new page section and update references. Print size is A5 with margins built into the page design.
- **Browser manual printing:** open the complete-book HTML, choose Save as PDF, A5, 100% scale, no extra margins, background graphics on, headers/footers off.
- **Blank square Persian glyphs:** keep the bundled `fonts/` folder with HTML exports. The supplied font supports Persian.

## Publishing status

This is a complete editable **first manuscript**, with a built PDF and validated Hugo output. It still needs your fluent-speaker/content review and a beginner trial before commercial release. No audio, live course URL, QR code, ISBN, ISBN claim or physical print proof is included. You can add audio links once recordings exist.

The book is presented in normal reading order. For a folded print booklet, use printer imposition software; don't reorder the editable manuscript.

© 2026 A World in Alef. See `RIGHTS.md` for owner and learner use.
