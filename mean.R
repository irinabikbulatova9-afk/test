#!/usr/bin/env Rscript

# Use command-line numbers when provided; otherwise run a small example.
args <- commandArgs(trailingOnly = TRUE)

if (length(args) == 0) {
  values <- c(10, 20, 30, 40, 50)
  message("Числа не переданы; используется пример: ", paste(values, collapse = ", "))
} else {
  values <- suppressWarnings(as.numeric(args))

  if (anyNA(values)) {
    stop("Все аргументы должны быть числами. Пример: Rscript mean.R 10 20 30", call. = FALSE)
  }
}

result <- mean(values)
cat(sprintf("Среднее: %s\n", format(result, trim = TRUE, scientific = FALSE)))
