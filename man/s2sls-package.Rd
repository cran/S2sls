\name{S2sls-package}
\alias{S2sls-package}
\alias{S2sls}
\docType{package}
\title{
Spatial Two Stage Least Squares estimation
}
\description{
Fit a spatial instrumental-variable regression by two-stage least squares.
}
\details{
\tabular{ll}{
Package: \tab S2sls\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2016-01-06\cr
License: \tab GPL-3\cr
}

S2sls(Y~X,data,W) Spatial Two Stage Least Squares Estimation computes spatial instrumental variables s2SLS estimation where Y is the vector of the dependant variable, X is the matrix of the independent variables and W is the contiguity matrix.

}
\author{
Taha Zaghdoudi

Taha Zaghdoudi <zedtaha@gmail.com>
}
\references{


  Amemiyia T. (1971), The estimation of the variances in a
  variance--components model, \emph{International Economic Review}, \bold{12},
  pp.1--13.

   Baltagi B.H. (1981), Simultaneous equations with error components,
  \emph{Journal of econometrics}, \bold{17}, pp.21--49.

  Baltagi B.H. (2001), \emph{Econometric Analysis of Panel Data}. John
  Wiley and sons. ltd.

  Millo, G., Piras, G. (2012)
splm: Spatial Panel Data Models in R.
\emph{Journal of Statistical Software}, \bold{47(1)}, 1--38.
URL http://www.jstatsoft.org/v47/i01/.

}

\examples{
 # Load data
 data(Produc,package="spanel")
 data(usaww,package="spanel")
 # The contiguity matrix w must be a square matrix with size[nrow(log(gsp)),nrow(log(gsp))]
 # so for our example we transform usaww to a square matrix:
 ww<-as.matrix(usaww)
 h<-kronecker(ww,diag(17))
 # fit spatial two stage least squares model
 ran<-s2sls(log(gsp) ~ log(pcap) + log(pc) + log(emp) + unemp,Produc,h)
 summary(ran)
}
