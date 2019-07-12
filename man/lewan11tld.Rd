\name{lewan11tld}
\alias{lewan11tld}
\docType{data}
\title{
Lewandowsky (2011) 'Six Problems' data set
}
\description{
  Trial-level individual-subject data for the Lewandowsky (2011)
  replication of Shepard et al. (1961). 
}
\usage{data("lewan11tld")}
\format{
  A data frame with 130176 observations on the following 12 variables.
  \describe{
    \item{\code{subj}}{Unique ID number for each combination of subject
      and \code{prob}.}
    \item{\code{session}}{Sessions number: 1-2}
    \item{\code{phase}}{Phase number: 1-3, i.e. problem number within session}
    \item{\code{type}}{Problem type: 1-6.}
    \item{\code{block}}{Block number: 1-12; each block contains 16
      trials.}
    \item{\code{trial}}{Trial number: 1-16.}
    \item{\code{trialid}}{Logical stimulus number: 1-8. Numbering
      corresponds to that used in Lewandowsky (2011, Figure 1G).}
    \item{\code{correct}}{Did the participant make the correct response on this trial?
      1 = yes, 0 = no.}
    \item{\code{RT}}{Response time, in seconds}
    \item{\code{dim1}}{Physical dimension of logical dimension 1: shape,
	color, or size. In Lewandowsky (2011, Figure 1G), dimension 1 is
	the x-axis (left to right on the page), dimension 2 is the
	z-axis (in and out of the page if the figure were really 3D),
	dimension 3 is the y-axis (up and down the page).}
      \item{\code{dim2}}{Physical dimension of lofical dimension 2.}
      \item{\code{dim3}}{Physical dimension of lofical dimension 3.}  
  }
}
\details{

  These are the trial-level individual-subject data for the Lewandowsky
  (2011) replication of Shepard et al. (1961). They comprise the
  responses of 113 people from the University of Western Australia
  campus community. Each participant completed three one-hour
  sessions. The first session comprised working memory tests, see
  \code{lewan11wm}. The other two sessions each comprised three
  classification problems, with each participant completing all six
  problems across the two sessions. For further details of this
  experiment, see Lewandowsky (2011).

  FORMAT NOTES: Participants were trained to criterion, the problem
  terminating when the participant had completed two consecutive blocks
  without error. However, the analyses reported in Lewandowsky (2011)
  assume that participants who met the criterion would have made no
  further errors had they continued for the full 12 blocks. In order to
  faciltate the reproduction of such analyses, this dataset explicitly
  represents those assumed post-criterion trials. Post-criterion trials
  can be distinguished from trials the participant actually experienced
  because all of \code{RT} is set to NA for those trials. They can thus
  be easily filtered out should that be desired for your particular
  analysis.

  SOURCE NOTES: These data were reported in Lewandowsky (2011).
  al. (1994), and in Nosofsky, Palmeri et al. (1994). In February 2018,
  Wills requested and received a digital copy of the individual
  trial-level data from Lewandowsky. Wills then preprocessed the data
  into the long-file format presented here. Wills also verified that
  these data reproduced Figure 2 of Lewandowsky (2011).

  DAU: uwa2011-01

}
\source{

  Lewandowsky, S. (2011). Working memory capacity and categorization:
  Individual differences and modeling. \emph{Journal of Experimental
  Psychology: Learning, Memory and Cognition, 37}, 720-738.

}
\examples{

  ## Reproducing Figure 2 of Lewandowsky (2011).
  data(lewan11tld)
  library(tidyverse)
  lewan.sum  <- lewan11tld \%>\% group_by(type, block) \%>\%
    summarise(err = 1-mean(correct))

  lewan.sum \%>\%
    ggplot(aes(x=factor(block), y=err, group=type, shape=factor(type))) +
    geom_line() + geom_point() + ylim(0,.6)

}

\keyword{datasets}
