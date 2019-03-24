\name{dynam_Life}
\alias{dynam_Life}
\title{
Dynamic update with Life CA algorithm
}
\description{
Update the survivial state of cells with fixed size grid (as matrix). Survival - 1, death - 0.
}
\usage{
dynam_Life(Init, n = 10)
image_animate(x,sleep_t =.1)
}
\arguments{
  \item{Init}{
  Initial state
}
  \item{n}{
Number of iterations
}
}
\references{
\link{https://en.wikipedia.org/wiki/Conway's_Game_of_Life}
\link{http://www.conwaylife.com/}
}
\author{
Hao Li
}
\examples{
#Demo Blinker
#Edit initial state
Init = matrix(0,5,5)
Init[3,4] <-Init[3,3]<-Init[3,2]<- 1

# 0 - no living cell on grid
# 1 - 1 living cell on grid
image(Init,asp = 1)
result = dynam_Life(Init)

image_animate(result)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~game }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~life }% __ONLY ONE__ keyword per line
