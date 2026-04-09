options(warn = 1)
cat("Starting final report render\n")
cat("Pandoc available:", rmarkdown::pandoc_available(), "\n")

result <- tryCatch({
  out <- rmarkdown::render(
    input = "Final_India_Census_2011_Report.Rmd",
    output_file = "Final_India_Census_2011_Report.html",
    quiet = FALSE
  )
  cat("Render output path:", out, "\n")
  "OK"
}, error = function(e) {
  cat("Render error:", conditionMessage(e), "\n")
  "ERROR"
})

cat("RESULT:", result, "\n")
