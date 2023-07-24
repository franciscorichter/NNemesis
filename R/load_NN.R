.onLoad <- function(libname, pkgname) {
  if (!"torch" %in% installed.packages()) {
    message("The 'torch' package is not installed. Installing now...")
    install.packages("torch")
    torch::install_torch()
  }
  model_path <- system.file("data", "NNtest.pt", package = "NNemesis")
  assign("cnn_ltt", torch::torch_load(model_path), envir = .GlobalEnv)
}
