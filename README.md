# sixproblems
R data package for experiments using the Shepard et al. (1961) abstract stimulus structure
## Installation
From within R, use the following commands:
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

All data sets are trial-level individual-subject data.

`lewan11tld` - Lewandowsky (2011). 113 participants, each completing all six
problems (i.e. N = 113 per problem).  Working memory data is also included, at
participant level, in `lewan11wm`.

`nosof94tld` - Nosofsky et al. (1994). 120 participants, each completing two of the six problems (i.e. N = 40 per problem). 

`rehder05tld` - Rehder & Hoffman (2005). 72 participants, completing one of problems I, II, IV or VI (i.e. N = 18 per problem, problems III and V not included). So, smaller sample than some other data sets, but also included are their eye-tracking data.

		  
