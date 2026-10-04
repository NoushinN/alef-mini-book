# Run from the project root in the RStudio Console.
needed <- c("blogdown", "pagedown")
missing <- needed[!vapply(needed, requireNamespace, logical(1), quietly = TRUE)]
if (length(missing)) install.packages(missing, repos = "https://cloud.r-project.org")
blogdown::install_hugo(version = "0.147.9", extended = FALSE)
message("Setup complete. For a local website: blogdown::serve_site()")
