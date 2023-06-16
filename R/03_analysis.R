#03 analysis 

str(pro_data)

#store mean y at each distance into a vector 
y_00 <- colMeans(pro_data[sapply(pro_data, is.numeric)])
df <- data.frame(y_00)
y_01 <- as.vector(df$y)

#store distance variable into a vector 
x <- c(3, 6, 9, 12)

#create a vector containing the sd of y

y_sd <- sapply(pro_data, sd)


#do a linear regression because the distance is the quantitative explanatory variable and the CFU/cm2 (amount of bacteria) is the quantitative response variable. 

lm_model <- lm(y_01~x)

###############################################################################################################################################################


#         Call:
#         lm(formula = y_01 ~ x)

#         Coefficients:
#         (Intercept)            x  
#             7.32964      0.08679  

#which gives us: ordinate at origin= 7.32964 and a slope=0.08679

m <- read.csv(here("data", "raw", "lm_eggfree.csv"), header = TRUE, sep = ";", dec = ",")
str(m)

summary(lm(m$cfu~m$distance))

