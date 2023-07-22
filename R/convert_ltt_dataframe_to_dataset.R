# Improved new_convert_ltt_dataframe_to_dataset function
convert_ltt_dataframe_to_dataset <- function(df.ltt){
  # Check if df.ltt is a valid data frame
  if(!is.data.frame(df.ltt)){
    stop("Input df.ltt is not a valid data frame.")
  }
  
  ds.ltt <- torch::dataset(
    name <- "ltt_dataset", 
    initialize = function(df.ltt){
      # input
      df.ltt[is.na(df.ltt)] <- 0
      
      array.ltt <- df.ltt %>% 
        as.matrix() %>% 
        torch::torch_tensor()
      self$x <- array.ltt
    }, 
    
    .getitem = function(i) {list(x = self$x[,i]$unsqueeze(1))},
    
    .length = function() {self$x$size()[[2]]}
  )
  
  return(ds.ltt)
}
