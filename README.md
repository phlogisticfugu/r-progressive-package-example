# r-progressive-package-example
example of progressive (going from ad-hoc to re-usable) packages in R

## Problem
R packages are powerful ways to create tested and re-usable code
However, they don't mix well with the type of ad-hoc code that most people
write when doing an analysis.

That is, packages give one powerful and simple access to automated tests, and
documentation of functions.  However, packages don't have a concept of when
code is executed, and are not made for procedural code

Procedural/ad-hoc code and the functions defined within it, are great for
moving quickly, but they make it difficult to re-use functions, and nearly
impossible to use unit tests

## Solution
This setup separates out the user-defined code into both a package and ad-hoc
scripts.

``
R/locallib
``
Is an R package (which can be loaded in a separate RStudio session) with fully documented, re-usable, and tested code

``
R/run
``
contains ad-hoc scripts which can be use all of the functions defined in the R package, and then do their own ad-hoc code.  Note that the top lines in each file are required:

```R
RPROJROOT <- rprojroot::find_root(rprojroot::has_file("RPROJROOT.md"))
source(file.path(RPROJROOT, "R", "bootstrap.R"))
```

And that one should set the working directing of RStudio to the same folder as the git repo itself, or a child of that directory.

``
R/bootstrap.R
``
Is part of what makes this all work.  It can also be used to define other global settings.
```R
devtools::install(file.path(RPROJROOT, "R", "locallib"), quick=TRUE)
```

