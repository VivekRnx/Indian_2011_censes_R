# Project-level R startup settings for VS Code knitting reliability
local({
  user_lib <- file.path(Sys.getenv("USERPROFILE"), "Documents", "R", "win-library", paste(R.version$major, strsplit(R.version$minor, "\\.")[[1]][1], sep = "."))
  if (!dir.exists(user_lib)) dir.create(user_lib, recursive = TRUE, showWarnings = FALSE)
  .libPaths(unique(c(user_lib, .libPaths())))

  pandoc_dir <- file.path(Sys.getenv("LOCALAPPDATA"), "Pandoc")
  if (dir.exists(pandoc_dir)) {
    Sys.setenv(PATH = paste(pandoc_dir, Sys.getenv("PATH"), sep = .Platform$path.sep))
  }
})
