# Build all chapters into one HTML document and one A5 PDF.
# Run: source("scripts/render_book.R")
if (!file.exists("hugo.yaml")) stop("Open It-Starts-with-Alef.Rproj first.")
for (pkg in c("blogdown", "pagedown")) {
  if (!requireNamespace(pkg, quietly = TRUE)) stop("Run source('scripts/setup.R') first.")
}
blogdown::build_site(build_rmd = FALSE)
book <- normalizePath("public/book/index.html", winslash = "/", mustWork = TRUE)
dir.create("output", showWarnings = FALSE)
# Keep a portable HTML edition with its local image/font dependencies.
html_dir <- file.path("output", "html-edition")
dir.create(html_dir, recursive = TRUE, showWarnings = FALSE)
for (folder in c("book", "images", "fonts")) {
  target <- file.path(html_dir, folder)
  if (dir.exists(target)) unlink(target, recursive = TRUE)
  file.copy(file.path("public", folder), html_dir, recursive = TRUE)
}
pagedown::chrome_print(
  input = book,
  output = normalizePath("output", winslash = "/") |> file.path("It-Starts-with-Alef.pdf"),
  wait = 3, timeout = 180,
  options = list(printBackground = TRUE, preferCSSPageSize = TRUE,
                 displayHeaderFooter = FALSE)
)
message("Done: output/It-Starts-with-Alef.pdf")
message("Portable HTML: output/html-edition/book/index.html")
