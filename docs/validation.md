# Validation for the delivered first manuscript

- Hugo 0.147.9 build succeeded: chapter pages, home, chapter listing and full-book HTML.
- 12 ordered chapter sources contain 48 uniquely numbered page sections.
- 39 consecutively numbered learner activities have corresponding answer entries.
- Local HTML links and image paths resolve.
- Delivered PDF has 48 A5 pages, rendered from the actual full-book HTML using WeasyPrint in the build environment.
- Whole-book page contact sheet visually inspected; enlarged Persian, short-vowel, answer and final-reading pages inspected. No page overflow observed in that render.
- Story, teaching words and final exercise were checked against the eight-letter scope.

## Practical limits

R/RStudio and Chrome PDF rendering were not available in this build environment. The supplied R script uses documented blogdown/pagedown functions, but you should proof its first PDF on your Windows machine; browser metrics can differ slightly from the delivered WeasyPrint PDF. The source HTML and print stylesheet are shared.

No actual GitHub remote was created or deployed. No fluent-speaker external review, learner trial, recorded audio or physical print proof has occurred. The manuscript is complete but remains an editorial first edition.

Official workflow references:
- https://pkgs.rstudio.com/blogdown/reference/build_site.html
- https://pkgs.rstudio.com/blogdown/reference/serve_site.html
- https://rstudio.github.io/pagedown/
