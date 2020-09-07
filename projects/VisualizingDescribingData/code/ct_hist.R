ct_hist <- function(x, prob = FALSE, main = NULL, 
                    pos = "topright", col = "grey", ...){
  # Produces a histogram with the mean , median, and mode plotted.
  # Created: Tuesday, 24 January 2017
  # R version: R version 3.3.2 (2016-10-31)
   h <-  hist(x, # histogram
     col = col, # column color
     border = "black", 
     main = main,
     prob = prob, # show densities instead of frequencies
     ...
     )
   ht <- ifelse(prob == TRUE, max(h$density), max(h$counts))
   mn <- mean(x)
   med <- median(x)
   segments(x0 = mn, x1 = mn, y0 = 0, y1 =ht*1.1, col = "red", lty = 1, lwd = 2)
   # abline(v = mn,
   #       col = "red",
   #       lty = 1,
   #       lwd = 2)
   segments(x0 = med, x1 = med, y0 = 0, y1 = ht*1.1, col = "royalblue", lty = 2, lwd = 2)
   # abline(v = med,
   #       col = "royalblue",
   #       lty = 2,
   #       lwd = 2)
   legend(x = pos, # location of legend within plot area
          c(paste("Mean = ", round(mn, 1)),
            paste("Median = ", round(median(x), 1))), 
         col = c("red", "royalblue"),
         bg = "transparent",
         bty = "n",
         lty = c(1, 2),
         lwd = c(2, 2))

}