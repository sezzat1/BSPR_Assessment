plot_01 <- ggplot(df,aes(x,y_01))+
  ggtitle("Bacterial growth depending on the distance")+
  xlab("Distance in centimeters")+ ylab(expression(CFU/cm^2))+
  geom_point()+
  geom_errorbar(aes(ymax=y_01+y_sd,ymin=y_01-y_sd),width=0.5, col = unibeRedS()[1])+
  ylim(6,11)+ xlim(0,12.5)+
  geom_abline(intercept = 7.32964, slope = 0.08679)


plot_02 <- ggplot(df,aes(x,y_01))+
  ggtitle("Bacterial growth depending on the distance")+
  xlab("Distance in centimeters")+ ylab(expression(CFU/cm^2))+
  geom_point()+
  geom_linerange(x =x, ymin =y_01, ymax= 7.32964+0.08679*x, col= unibeApricotS()[1])+
  ylim(6,11)+ xlim(0,12.5)+
  geom_abline(intercept = 7.32964, slope = 0.08679)


plot_03 <- ggplot(m,aes(distance,cfu))+
  ggtitle("Bacterial growth depending on the distance")+
  xlab("Distance in centimeters")+ ylab(expression(CFU/cm^2))+
  geom_point(col= unibePastelS()[1])+
  ylim(6,11)+ xlim(0,12.5)+
  geom_abline(intercept = 7.32964, slope = 0.08679)


#correlation
x <- m[, 1:2]
correlation <- cor(x)
corrplot(correlation, method = "number" , tl.col="black", col = c(unibeMustard(), unibeApricot(),unibeRed(), unibeViolet()))