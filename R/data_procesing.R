generate_ltt_dataframe <- function(trees, n_taxa, true.param){
  
  n_trees  <- length(trees) # number of trees 
  n_row <- ifelse(length(n_taxa) == 1, n_taxa, n_taxa[2])
  df.ltt <- data.frame("tree1" = rep(NA, n_row))
  
  df.rates <- as.data.frame(do.call(cbind, true.param))
  
  cat("Creating LTT dataframe...\n")
  
  for (i in 1:n_trees){
    tree <- trees[[i]] # get tree 
    ltt.coord <- ape::ltt.plot.coords(tree) # get ltt coordinates 
    ltt.coord <- as.data.frame(ltt.coord)
    ltt.coord.time <- ltt.coord$time
    n <- length(ltt.coord.time)
    df.ltt[1:n,paste("tree", i, sep = "")] <- ltt.coord$time
    progress(i, n_trees, progress.bar = TRUE, init = (i==1))
  }
  
  cat("\nCreating LTT dataframe... Done.")
  
  out <- list("ltt" = df.ltt, "rates" = df.rates) # function output
  
  return(out)
  
}