\name{lewan11wm}
\alias{lewan11wm}
\docType{data}
\title{
Lewandowsky (2011) 'Six Problems' data set - working memory data
}
\description{
  Participant-level working memory data for the Lewandowsky (2011)
  replication of Shepard et al. (1961). 
}
\usage{data("lewan11wm")}
\format{
  A data frame with 113 observations on the following 7 variables.
  \describe{
    \item{\code{subID}}{Unique ID number for each combination of subject
      and \code{prob}.}
    \item{\code{WMUMean}}{Working Memory Updating task score}
    \item{\code{OSMean}}{Operation Span task score}
    \item{\code{CJOSMean}}{Operation Span processing task score}
    \item{\code{SSMean}}{Sentence Span score}
    \item{\code{SSCJMean}}{Sentence Span processing task score}
    \item{\code{SSTMScore}}{Spatial short-term memory task score} 
  }
}
\details{

  These are the subject-level working-memory-task data for the
  Lewandowsky (2011) replication of Shepard et al. (1961). They comprise
  the scores of 113 people from the University of Western Australia
  campus community. Each participant completed three one-hour
  sessions. The first session comprised working memory tests. The other
  two sessions each comprised three classification problems, with each
  participant completing all six problems across the two sessions. For
  further details of this experiment, see Lewandowsky (2011). These
  working memory scores can be mapped to the data in \code{lewan11tld}
  via the subject ID. 

  SOURCE NOTES: These data were reported in Lewandowsky (2011).
  al. (1994), and in Nosofsky, Palmeri et al. (1994). In February 2018,
  Wills requested and received a digital copy of the individual
  trial-level data from Lewandowsky. Wills then preprocessed the data
  into the long-file format presented here. Wills also verified that
  these data reproduced the means reported in Table 1 of Lewandowsky
  (2011).

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
  mean(lewan11wm$WMUMean)
  mean(lewan11wm$OSMean)
  mean(lewan11wm$CJOSMean)
  mean(lewan11wm$SSMean)
  mean(lewan11wm$SSCJMean)
  mean(lewan11wm$SSTMScore)
}

\keyword{datasets}
