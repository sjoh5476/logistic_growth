#Script to plot data and model

growth_data <- read.csv("experiment1.csv")

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

N0 <- 995 # y intercept of model 1
  
r <- 9.990e-03 # gradient of model 1
  
K <- 6.00e+10 # y intercept of model 2

ggplot(aes(t,N), data = growth_data) +
  geom_function(fun=logistic_fun, colour="red") +
  geom_point() 
  #scale_y_continuous(trans='log10')


