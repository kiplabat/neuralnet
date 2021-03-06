\name{confidence.interval}
\alias{confidence.interval}
\title{ Calculates confidence intervals of the weights }
\description{
    \code{confidence.interval}, a method for objects of class \code{nn}, typically produced by \code{neuralnet}.  Calculates confidence intervals of the weights (White, 1989)
    and the network information criteria NIC (Murata et al. 1994). All confidence intervals are calculated under the assumption of  a local identification of the given neural network.
    If this assumption is violated, the results will not be reasonable. Please make also sure that the chosen error function equals the negative log-likelihood function,
    otherwise the results are not meaningfull, too.
}
\usage{
confidence.interval(x, alpha = 0.05)
}
\arguments{
  \item{x}{ neural network }
  \item{alpha}{ numerical. Sets the confidence level to (1-alpha). }
}
\value{
   \code{confidence.interval} returns a list containing the following components:
   
  \item{ lower.ci }{a list containing the lower confidence bounds of all weights of the neural network differentiated by the repetitions.}
  \item{ upper.ci }{a list containing the upper confidence bounds of all weights of the neural network differentiated by the repetitions.}
  \item{ nic }{a vector containg the information criteria NIC for every repetition.}
}
\references{ 
    White (1989)
    \emph{Learning in artificial neural networks. A statistical perspective.}  
    Neural Computation (1), pages 425-464

    Murata et al. (1994)
    \emph{Network information criterion - determining
the number of hidden units for an artificial neural network model.}  
    IEEE Transactions on Neural Networks 5 (6), pages 865-871
}

\author{ Stefan Fritsch, Frauke Guenther \email{guenther@leibniz-bips.de} }
\seealso{\code{\link{neuralnet}}}
\examples{
    data(infert, package="datasets")
    print(net.infert <- neuralnet(case~parity+induced+spontaneous,  
                        infert, err.fct="ce", linear.output=FALSE))
    confidence.interval(net.infert)
}
\keyword{ neural }

