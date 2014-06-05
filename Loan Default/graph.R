# count default numbers and non-default numbers
########### train_v2 ############
#loss <- train_v2$loss
########### output_1000 ############
loss <- output_1000$loss
count <- 0
num <- length(loss)
for( i in 1:num)
  if(loss[i] == 0) count <- count + 1
print(count)
# loan status
slices <- c(count,num - count )
lbls <- c("default", "non-default")
pie(slices, labels = lbls, main = "Pie Chart of loan status")
####################

