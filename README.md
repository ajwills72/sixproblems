# sixproblems
R data package for experiments using the Shepard et al. (1961) abstract stimulus structure
## Installation

1. Ensure your version of R is up to date (**version 3.5**, or later)

2. From within R, use the following commands:
```
install.packages("devtools")
library(devtools)
install_github("ajwills72/sixproblems")
library(sixproblems)
```

## Help
For help, type:
`?sixproblems`

## Datasets included

All data sets are individual-subject data, mostly at trial level, some at block level.

`kurtz2013e2bld` - Kurtz et al. (2013). Block-level data. 322 participations, completing either a Type II problem or a Type IV problem. 

`lewan11tld` - Lewandowsky (2011). Trial-level data. 113 participants, each completing all six
problems (i.e. N = 113 per problem).  Working memory data is also included, at
participant level, in `lewan11wm`.

`nosof94tld` - Trial-level data. Nosofsky et al. (1994). 120 participants, each completing two of the six problems (i.e. N = 40 per problem). 

`rehder05tld` - Rehder & Hoffman (2005). 72 participants, completing one of problems I, II, IV or VI (i.e. N = 18 per problem, problems III and V not included). So, smaller sample than some other data sets, but also included are their eye-tracking data.

		  
