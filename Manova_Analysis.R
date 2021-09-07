# Repeated Measures ANOVA for employment rates over time.
install.packages('car')
install.packages('rcompanion')
install.packages('fastR2')
install.packages('mvnormtest')


#Data Wrangling
Unemployment1 <- na.omit(`Unemployment Rate`)
Unemployment1

#Reshaping the data to include only relevant columns
Rcolumns <- c('DATE', 'UNRATENSA', 'UNRATE_WOMEN', 'UNRATE_MEN')
Unemployment2 <- Unemployment1[Rcolumns]

#Create Dataframe with only two DV
RDV <- c("UNRATE_WOMEN","UNRATE_MEN")
Unemployment3 <- Unemployment2[RDV]

#Format Df as Matrix
M_Unemployment<- as.matrix(Unemployment3)

#Test for Assumptions
#Sample Size
length(M_Unemployment)
# Sample size is 518 thus criteria met

#Test For Multivariate Normality
mshapiro.test(t(M_Unemployment))
#Multivariate normality is significant thus criteria has not been met

