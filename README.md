# NNemesis

NNemesis is a comprehensive R package providing a suite of tools for Neural Networks, Evolution, Modeling, Statistical Inference, and Simulations. It is designed to tackle complex tasks across these domains, providing users with an efficient and effective way to overcome their data analysis challenges.

## Features

* **Neural NEtworks:** Use advanced neural network models to analyze your data.
* **Modeling Evolution:** Track and analyze evolutionary data and patterns building and comparing evolutionary models.
* **Statistical Inference:** Perform robust statistical inference tasks.
* **Simulations:** Create and analyze simulations for a wide range of scenarios.

## Installation

To install the latest version of NNemesis from GitHub:

```r
# install.packages("devtools")
devtools::install_github("franciscorichter/NNemesis")
```

## Usage

Here is a basic example of how to use NNemesis:

```r
library(NNemesis)

tree = FamilyMammalTrees$Ziphiidae$tree
p_dropout = 0

DDD_est(tree = tree,cnn_ltt = cnn_ltt)
```

Please refer to the vignettes for detailed examples and usage instructions.

## Contributing

Contributions are welcome, and they are greatly appreciated! Every little bit helps, and credit will always be given.

Please read our [Contributing Guidelines](LINK_TO_CONTRIBUTING.md) and our [Code of Conduct](LINK_TO_CODE_OF_CONDUCT.md) to start contributing.

## License

This project is licensed under the terms of the MIT license.
