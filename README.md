
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
  - [ ] _2_-dimensional RLE `rle_2()`
  - [ ] _n_-dimensional RLE `rle_n(., n)`
- [x] Class-specific Transpose `transpose()`
- [ ] Enhanced Dataset Operations
  - [x] not in `%notin%`
  - [ ] shuffle order of a vector `shuffle()`
  - [ ] drillable hierarchical lists `group_by() %>% set_hierarchy() %>% as.list()`
  - [ ] enhance tibbles/dataframes with pre-computed summary values (mean, sum, sd, etc.)
  - [x] easily digestible information about a variable/object `about()`
  - [x] `rename_columns` and `rename_rows` functions for pipes
  - [x] `reorder_columns` and `reorder_rows` functions for pipes
  - [ ] Add ability to use sets (create new _set_ type) in R using `as.set()`
- [ ] Fancy loops
  - [ ] automatically-binding loop `bloop(i in 1:100, method = "cbind", parmethod = "doParallel")`
  - [x] returns multiple objects from loop `returns()`
- [ ] ID'd Directional Pipe `%>%(1,2)` for `object<1>` and `function()<2>`
- [ ] Automatic Parallelism
  - [x] inherently set up local parallel `parkour()` or `parcore()` using `.onLoad` or `.onAttach`
  - [ ] recognize loop operations to parallelize `for(){}`
- [ ] Replacement of Slow Functions
  - [ ] TBD

## License

This project is licensed under the Apache 2.0 License - see the [LICENSE](LICENSE) file for details
