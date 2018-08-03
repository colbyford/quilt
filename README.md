
# *quilt* - A patchwork of efficient and tidy multidimensional data operations
<h3 align = "right">Colby Ford, Ph.D.</h3>
<img align="right" src="https://raw.githubusercontent.com/colbyford/quilt/master/img/quilt_hex.png" alt="quilt icon" width="200">

## Installation

You can install the latest stable version from GitHub using the following command:
```r
library(devtools)
install_github("colbyford/quilt")
library(quilt)
```

## To Do List

- [ ] Multidimensional Run Length Encoding
  - [ ] 2-dimensional RLE `rle_2()`
  - [ ] n-dimensional RLE `rle_n(., n)`
- [ ] Class-specific Transpose `transpose()`
- [ ] Enhanced Dataset Operations
  - [x] not in `%notin%`
  - [ ] shuffle order of a vector `shuffle()`
  - [ ] drillable hierarchical lists `group_by() %>% set_hierarchy() %>% as.list()`
  - [ ] enhance tibbles/dataframes with pre-computed summary values (mean, sum, sd, etc.)
  - [ ] easily digestible information about a variable/object `about()`
- [ ] Fancy loops
  - [ ] automatically-binding loop `bloop(i in 1:100, method = "cbind", parmethod = "doParallel")`
  - [ ] returns multiple objects from loop `returns()`
- [ ] ID'd Directional Pipe `%>%(1,2)` for `object<1>` and `function()<2>`
- [ ] Automatic Parallelism
  - [x] inherently set up local parallel `parkour()` or `parcore()` using `.onLoad` or `.onAttach`
  - [ ] recognize loop operations to parallelize `for(){}`

## License

This project is licensed under the Apache 2.0 License - see the [LICENSE](LICENSE) file for details
