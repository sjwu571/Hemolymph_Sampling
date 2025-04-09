# https://www.statskingdom.com/kaplan-meier.html
library(survival)
colors1=c("red","blue","green","brown")
# between the last sampling and before sexing, assumed deaths occured in the middle of that periods due to missing records.
time = c(43,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,89,89,89,65,89)
status = c(1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1)
group = c("ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt")
sdata=data.frame(time,status,group)
formula1 <- Surv(time, status == 1) ~ group
test_result <- survdiff(formula = formula1, data = sdata, rho = 0)
test_result
plot(survfit(formula1), lty=c(1:2), col=colors1,xlab = "Time (days)", ylab = "Survival probability")
legend("bottomright", legend=c("Laboratory Control (LC)","Laboratory Treatment (LT)"),col=colors1, lty=1, cex=0.6)
#title="Group 1"
# export PDF 4.2' x 4.2'

# Summer
library(survival)
colors1=c("red","blue","green","brown")
time = c(27,64,182,214,214,214,214,214,214,214,214,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,27,152,214,214,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244)
status = c(1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
group = c("trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","trt","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl","ctrl")
sdata=data.frame(time,status,group)
formula1 <- Surv(time, status == 1) ~ group
test_result <- survdiff(formula = formula1, data = sdata, rho = 0)
test_result
plot(survfit(formula1), lty=c(1:2), col=colors1,xlab = "Time (Days)", ylab = "Survival probability")
legend("bottomright",legend=c("Natural Control (NC)","Natural Treatment (NT)"),col=colors1, lty=1, cex=0.6)
