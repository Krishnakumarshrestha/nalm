# nalm

nalm package is build for providing Nepal Mortality table of 2009 and contain few helpful function which is used frequently

## Installation

You can install the development version of `nalm` from [GitHub](https://github.com/) with :

```{r}
# Install.packages("devtools")
devtools::install_github("krishnakumarshrestha/nalm")
```

\`

## Access Mortality data set

The `nalm` package includes a data frame containing age and its corresponding mortality rate

```{r}
library(nalm)
?nalm2009

df<- nalm2009()
head(df,10:20)

```
