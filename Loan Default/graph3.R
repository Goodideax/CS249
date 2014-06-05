for( i in 1:num)
  if(loss[i]== 0)
    loss[i] <- NA
loss <- na.omit(loss)
hist(loss,breaks=seq(1,100,1),xaxt="n",yaxt="n")
axis(side=1,at=seq(1,100,5))

axis(side=2,at=seq(0,6000,100))
