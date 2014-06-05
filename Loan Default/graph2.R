Len <- length(loss)

v1 = 0
v2 = 0
v3 = 0
v4 = 0
v5 = 0
v6 = 0
v7 = 0
v8 = 0
v9 = 0
v10 = 0

for (i in 1:Len)
{
  if( loss[i] <= 10 && loss[i] > 0)
    v1 = v1 + 1
  if( loss[i] <= 20 && loss[i] > 10)
    v2 = v2 + 1
  if(loss[i] <= 30 && loss[i] > 20)
    v3 = v3 + 1
  if(loss[i] <= 40 && loss[i] > 30)
    v4 = v4 + 1
  if(loss[i] <= 50 && loss[i] > 40)
    v5 = v5 + 1
  if(loss[i] <= 60 && loss[i] > 50)
    v6 = v6 + 1
  if(loss[i] <= 70 && loss[i] > 60)
    v7 = v7 + 1
  if(loss[i] <= 80 && loss[i] > 70)
    v8 = v8 + 1
  if(loss[i] <= 90 && loss[i] > 80)
    v9 = v9 + 1
  if(loss[i] <= 100 && loss[i] > 90)
    v10 = v10 + 1
}
#statistic
data=c(v1,v2,v3,v4,v5,v6,v7,v8,v9,v10)

labs=c("1-10","11-20","21-30", "31-40", "41-50", "51-60", "61-70", "71-80", "81-90", "91-100")
########### train_v2 ############
#barplot(data,col=c("deeppink","mediumturquoise","yellow","greenyellow","violet","red","green", "mediumturquoise","lavender","sandybrown","hotpink"),ylim=c(0,8000),width=1,space=1,ylab="Frequency",las=1)

########### output_1000 ############
#barplot(data,col=c("deeppink","mediumturquoise","yellow","greenyellow","violet","red","green", "mediumturquoise","lavender","sandybrown","hotpink"),ylim=c(0,16000),width=1,space=1,ylab="Frequency",las=1)

########### output_gbm_1000 ############
#barplot(data,col=c("deeppink","mediumturquoise","yellow","greenyellow","violet","red","green", "mediumturquoise","lavender","sandybrown","hotpink"),ylim=c(0,10000),width=1,space=1,ylab="Frequency",las=1)

########### output_gp_1000 ############
barplot(data,col=c("deeppink","mediumturquoise","yellow","greenyellow","violet","red","green", "mediumturquoise","lavender","sandybrown","hotpink"),ylim=c(0,14000),width=1,space=1,ylab="Frequency",las=1)

text(x=seq(1.5,20,by=2),y=-0.15, srt = 45, adj = 1, labels = labs,xpd = TRUE)

########### train_v2 ############
#abline(h=c(1000,2000,3000,4000,5000,6000,7000,8000),col="#00000088",lwd=2)
########### output_1000 ############
#abline(h=c(1000,3000,5000,7000,9000,11000,13000,15000),col="#00000088",lwd=2)
########### output_gbm_1000 ############
#abline(h=c(1000,3000,5000,7000,9000),col="#00000088",lwd=2)
########### output_gp_1000 ############
abline(h=c(1000,3000,5000,7000,9000,11000,13000),col="#00000088",lwd=2)

abline(h=0)
cat("1-10:", v1)
cat("\n")
cat("11-20: ", v2)
cat("\n")
cat("21-30: ", v3)
cat("\n")
cat("31-40: ", v4)
cat("\n")
cat("41-50: ", v5)
cat("\n")
cat("51-60: ", v6)
cat("\n")
cat("61-70: ", v7)
cat("\n")
cat("71-80: ", v8)
cat("\n")
cat("81-90: ", v9)
cat("\n")
cat("91-100: ", v10)

print(v1)
