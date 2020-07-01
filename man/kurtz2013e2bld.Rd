\name{kurtz2013e2bld}
\alias{kurtz2013e2bld}
\docType{data}
\title{
Kurtz et al. (2013, Exp. 2) Type II versus Type IV data set
}
\description{
  Block-level indidivdual-participant data for the Kurtz et al. (2013) comparison of Type
  II and Type IV problems.
}
\usage{data("kurtz2013e2bld")}
\format{
  A data frame with 2584 observations on the following 4 variables.
  \describe{
    \item{\code{type}}{Problem type: 2 or 4.}
    \item{\code{subj}}{Unique ID number for subject.}
    \item{\code{block}}{Block number: 1-8; each block contains 8
      trials.}
    \item{\code{acc}}{The participant's probability of a correct
      response in that block, range: 0-1.}
  }
}
\details{

  These are the block-level individual-participant data for the Kurtz et al. (2013,
  Experiment 2) comparison of problem types II and IV. A total of 322
  students from Binghamton University completed the experment (133 for
  the Type II problem and 189 for the Type IV problem). For further details of this
  experiment, see Kurtz et al. (2013).

  FORMAT NOTES: Participants were trained to criterion, the problem
  terminating when the participant had completed two consecutive
  blocks without error. However, the analyses reported in Kurtz
  et al. (1994) assume that participants who met the criterion would
  have made no further errors had they continued for the full 8
  blocks. In order to faciltate the reproduction of such analyses, this
  dataset explicitly represents those assumed post-criterion
  blocks. 

  SOURCE NOTES: These data were reported in Kurtz et
  al. (2013). Schlegelmilch subsequently requested and received a
  digital copy of the individual block-level data from Kurtz. Wills
  verified that these data reproduced Figure 3 of Kurtz et
  al. (2013). Wills then pre-processed the data into the long-file data
  format presented here.

}
\source{

  Kurtz, K.J., Levering, K.R., Stanton, R.D., Romero, J. and Morris,
  S.N. (2013). Human learning of elemental category structures: Revising
  the classic result of Shepard, Hovland, and Jenkins
  (1961). \emph{Journal of Experimental Psychology: Learning, Memory,
  and Cognition, 39}, 552-572.

}

\examples{

  data(kurtz2013e2bld)
  library(tidyverse)
  kurtz2013e2bld \%>\% group_by(type, block) \%>\% summarise(mean(acc))

}

\keyword{datasets}
