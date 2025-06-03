library(bingo)
library(here)
set.seed(5263)

n_cards <- 40

# Create bingo cards -----------------------------------------------------

positron <- scan(here("bingo", "prompts.txt"), what = character(), sep = "\n")
bc <- bingo(n_cards = 40, words = positron)

# Plot one card for slides and webpage -----------------------------------

one_card <- bc[, 1, drop = FALSE]
class(one_card) <- class(bc)
plot(one_card, dir = here("bingo"), fontsize = 12)


# Plot all cards in a single document ------------------------------------

# mostly borrowed from `bingo::plot.bingo`
# adpated to create one PDF with letter size paper
one_pdf <- function(x, file = "bingo.pdf", fontsize = 14, ...) {
  bc <- x
  n <- bingo:::infer_n(bc)
  n_cards <- ncol(bc)
  bc_wrapped <- apply(bc, 2, bingo:::wrap_it)
  grDevices::pdf(file, width = 7, height = 7, paper = "letter")
  for (i in seq_len(n_cards)) {
    bingo:::plot_one(bc_wrapped[, i], n = n, fontsize = fontsize)
  }
  grDevices::dev.off()
  invisible(file)
}

one_pdf(bc, here("bingo", "bingo-cards.pdf"), fontsize = 12)
