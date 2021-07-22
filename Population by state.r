#Determine the amount of people from each state in Mexico that would need to be interviewed in order to get a representative sample size of mexicans from 36 to 45
#It requires "Pupulation by state.csv" file
#Sample size 
z <- qnorm(p=0.05/2, lower.tail=FALSE)
p <- 0.5
q <- 1-p
StndError <- 0.05
TotalInterviews <- ((z^2)*p*q)/(StndError^2)
print(TotalInterviews)

from36to40 <- 9020276
from41to45 <- 8503586
from36to45 <- from36to40 + from41to45

print(from36to45)

base <- read.csv("Population by state.csv")
#Source:INEGI(2020). Population. https://www.inegi.org.mx/temas/estructura/
print(base)
MexPop <- from36to45
print(MexPop)
class(MexPop)
class(base)
PopulationByState <- base[,2]
print(PopulationByState)
class(PopulationByState)
PercentageByState <- PopulationByState / PobMex *100
print(PercentageByState)
State <- base[,1]
print(State)
StateWithPerc<- cbind(State,PercentageByState)
print(StateWithPerc)
InterviewsPerState <- (TotalInterviews/100)*PercentageByState
print(InterviewsPerState)
InterviewsPerState <- round(InterviewsPerState)
print(InterviewsPerState)
Result <- cbind(State,InterviewsPerState)
print(Result)