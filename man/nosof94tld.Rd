\name{nosof94tld}
\alias{nosof94tld}
\docType{data}
\title{
Nosofsky et al. (1994) 'Six Problems' data set
}
\description{
  Trial-level individual-subject data for the Nosofsky et al. (1994)
  replication of Shepard et al. (1961). 
}
\usage{data("nosof94tld")}
\format{
  A data frame with 96000 observations on the following 11 variables.
  \describe{
    \item{\code{subj}}{Unique ID number for each combination of subject
      and \code{prob}.}
    \item{\code{type}}{Problem type: 1-6.}
    \item{\code{prob}}{Indicates whether this is the first (1) or second
    (2) problem attempted by the subject.}
    \item{\code{block}}{Block number: 1-25; each block contains 16
      trials.}
    \item{\code{subblock}}{Sub-block number: 1-50; each sub-block
      contains 8 trials.}
    \item{\code{trial}}{Trial number: 1-16; resets to 1 at the beginning
    of each block.}
    \item{\code{logstim}}{Logical stimulus number: 1-8. Numbering
      corresponds to that used in Nosofsky et al. (1994, Figure 1). }
    \item{\code{phystim}}{Physical stimulus number: 1-8. Correspondance
      of these numbers to the physical stimuli shown in Nosofsky et
      al. (1994, Figure 1) is not known, but they represent the same
      physical stimulus throughout the data file (e.g. if 1 were to
      equal small, white, square, then it would do so for all trial for
      all subjects.}
    \item{\code{resp}}{The participant's response: 0 or 1, indicating
      which of the two categories was chosen. The physical response keys
    to which these numbers correspond is unknown.}
    \item{\code{cat}}{The category membership of the presented item: 0
      or 1. The physical category labels to which these numbers
      correspond is unknown.}
    \item{\code{error}}{Did the participant make an error on this trial?
    1 = yes, 0 = no. This column was derived from a comparison of the
    \code{resp} and \code{cat} columns}
  }
}
\details{

  These are the trial-level individual-subject data for the Nosofsky et
  al. (1994) replication of Shepard et al. (1961). The comprise the
  responses of 120 undegraduates from Indiana University, each of whom
  completed two of the six problems. For further details of this
  experiment, see Nosofsky, Gluck et al. (1994)

  These data were collected in around 1991, and were first reported in
  Nosofsky, Gluck et al. (1994), and in Nosofsky, Palmeri et
  al. (1994). In 2018, Andy Wills requested and received a digital copy of
  the individual trial-level data from Tom Palmeri. Andy Wills verified
  that these data reproduced Table 1 of Nosofsky, Gluck et al. (1994),
  and Figures 6-8 of Nosofsky, Palmeri et al. (1994). He then
  pre-processed the data into the long-file data format presented here.
  
  NOTE: Participants were trained to criterion, the problem terminating
  when the participant had completed four consecutive sub-blocks without
  error. However, the analyses reported in Nosofsky et al. (1994) assume
  that participants who met the criterion would have made no further
  errors had they continued for the full 25 blocks. In order to
  faciltate the reproduction of such analyses, this dataset explicitly
  represents those assumed post-criterion trials. Post-criterion trials
  can be distinguished from trials the participant actually experienced
  because all of \code{phystim}, \code{resp}, and \code{cat}, are set to
  NA for those trials. They can thus be easily filtered out should that
  be desired for your particular analysis.

}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(nosof94tld)
## maybe str(nosof94tld) ; plot(nosof94tld) ...
}
\keyword{datasets}
