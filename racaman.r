library(tidyverse)

racaman <- function(n) {
  if (n < 2) stop("Use more than 1 iteration.")
  x <- tibble(seq = 1:n)
  a <- c(0)
  b <- c(1)
  
  for (i in 2:n) {
    a[i] <- b[i-1]
    
    b[i] <-
      if (max(0, a[i] - i) %in% a) a[i] + i else
        a[i] - i
  }
  
  x$start <- a
  x$end <- b
  x
}

x <- racaman(999)

ggplot(x) +
  geom_curve(aes(x = start, y = 0, xend = end, yend = 0, color = start < end),
    #color = "steelblue",
    size = 0.25,
    alpha = 0.15) +
  theme_minimal() +
  theme(axis.title.y=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank(),
        axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank()) +
  scale_colour_manual("", values = c("steelblue", "indianred")) +
  theme(legend.position="none") +
  ggtitle("Recamán Sequence in ggplot2", subtitle = "by @sgranitz")

ggplot(x) +
  geom_segment(aes(x = start, y = seq, xend = end, yend = seq, color = start > end),
             #color = "steelblue",
             size = 0.5,
             alpha = 0.5) +
  theme_minimal() +
  theme(axis.title.y=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank(),
        axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank()) +
  scale_colour_manual("", values = c("steelblue", "indianred")) +
  theme(legend.position="none") +
  ggtitle("Recamán Sequence in ggplot2", subtitle = "by @sgranitz")
