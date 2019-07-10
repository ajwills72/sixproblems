\name{rehder05tld}
\alias{rehder05tld}
\docType{data}
\title{
Rehder and Hoffman (2005) 'Six Problems' data set
}
\description{
  Trial-level individual-subject data for the Rehder and Hoffman (2005)
  replication of Types I, II, IV and VI or Shepard et al. (1961). 
}
\usage{data("rehder94tld")}
\format{
  A data frame with 177600 observations on the following 11 variables.
  \describe{
    \item{\code{s}}{Unique ID number for each subject.}
    
    \item{\code{type}}{Problem type: 1-6.}
    
    \item{\code{dimorder}}{Counterbalancing of physical to abstract
      stimulus dimensions: 1-3. What, specifically, each of the three
      mappings are is not recorded.}
    
    \item{\code{block}}{Block number: 1-28; each block contains 8
      trials.}

    \item{\code{trial}}{Trial number: 1-8; resets to 1 at the beginning
      of each block.}
    
    \item{\code{trialid}}{Three digit code, e.g. 101, indicating the
    stimulus presented on that trial. This is the abstract stimulus
    representation}

    \item{\code{correct}}{Did the participant get this trial correct?
      1 = yes, 0 = no}

    \item{\code{DV}}{The dependent variable being reported on the
  current row. Takes the values: \code{resp_key} - the response key
  pressed (0, 1); how this maps to physical response on the button box
  is not recorded. \code{resp_rt} - Response time, in
  milliseconds. \code{eye_obs} - Number of eye-track
  fixations. \code{eye_rt} - Total eye-track dwell time, in
  milliseconds. \code{eye_pri} - Eye-track 'relative priority' measure;
  see original paper for definition.}

   \item{\code{aoi}}{Area of interest. For eye-track DVs, this is the
   area of interest (1-3) for which the DV is reported. The areas of
   interest correspond to the locations of three stimulus dimensions on
   the screen}

 \item{period}{Period of observation (before or after participant's
   response), for eye-track measures.}

 \item{value}{The value of the DV specified by previous columns.}
 }}

\details{

  These are the trial-level individual-subject data for the Rehder &
  Hoffman (2005) replication of Types I, II, IV and VI of Shepard et
  al. (1961), including the eye-tracking data they collected. They
  comprise the responses of 72 undegraduates from New York
  university. For further details of this experiment, see Rehder &
  Hoffman (2005).

  SOURCE NOTES: These data were reported in Rehder & Hoffman (2005).  In
  April 2018, Wills requested and received a digital copy of the
  individual trial-level data from Rehder. Wills preprocessed the data
  into the long-file data format presented here, and confirmed that the
  mean number of blocks to criterion for each problem type calculated
  from this data file matched the figures reported in the original
  manuscript. Rehder & Hoffman (2005) stated that no participant
  completed more than 28 blocks, but there were data for blocks beyond
  block 28 for some participants in Rehder's file. It was necessary to
  remove these blocks from the curent archive in order to reproduce the
  analysis of mean-blocks-to-criterion reported in Rehder & Hoffman.

  DAU: nyu-2005-001

}
\source{

  Rehder, B. and Hofmann, A.B. (2005). Eyetracking and selective
  attention in category learning. \emph{Cognitive Psychology, 51},
  1--41.

}
\examples{

  ## Reproducing mean blocks-to-criterion reported in Rehder & Hoffman (2005)
  data(rehder05tld)
  library(tidyverse)
  ## Calculate blocks to criterion.
  btc <- rehder05tld \%>\% group_by(type, s) \%>\% summarise(nblock = max(block))
  ## As per paper, if participant reached block 28 without passing criterion
  ## recode this as having taken 29 blocks to reach criterion
  btc$nblock[btc$nblock > 27 & btc$s != 70] <- 29
  ## Calculate mean blocks to criterion by problem type
  btc \%>\% group_by(type) \%>\% summarise(mbtc = mean(nblock))

}

\keyword{datasets}
