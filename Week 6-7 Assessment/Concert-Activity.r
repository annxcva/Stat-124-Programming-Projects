###ASHLEY AND BAILEY

loan_amount <- 10000
n <- 12
total_payment <- 11000

#initial guess
x <- 0.1
myf <- function (myx) loan_amount * myx - (total_payment/n) * (1 - 1/(1 + myx)^n)
myfprime <- function (myx) loan_amount - (total_payment/n) * (-n/(1 + myx)^(n+1))
threshold <- 1e-10
  
while (abs(myf(x)) >= threshold){x <- x - myf(x) / myfprime(x)}
  
cat("Effective monthly interest rate:", x)




###CATHERINE AND DONNA
  
new_bal <- 10000
month_pay <- 1000
r <- 0.02
counter = 0
total = 0
int_v <- c()
net_v <- c()
new_bal_v <- c()
total_v <- c()
x=new_bal[1]
while (x >= 1000){
  month_pay = c(month_pay,1000)
  interest <- new_bal * r 
  net <- month_pay - interest 
  new_bal = new_bal - net 
  counter = counter + 1
  total = month_pay*counter
  int_v <- c(int_v, interest)
  net_v <- c(net_v, net)
  new_bal_v <- c(new_bal_v, new_bal)
  total_v <- c(total_v, total)
  x=new_bal[1]
 if(x < 1000) {interest = new_bal * r
month_pay = new_bal + interest}
}
month_pay = new_bal + interest
total = total + month_pay 

schedule <- cbind(int_v, net_v, new_bal_v, total_v)

print(total)
print(schedule)
int_v




new_bal <- 10000
month_pay <- 1000
r <- 0.02
counter = 0
total = 0

int_v <- c()
net_v <- c()
new_bal_v <- c()
total_v <- c()
month_pay_v <- c()

while (new_bal >= 1000){{
  interest <- new_bal * r 
  net <- month_pay - interest 
  new_bal = new_bal - net 
  counter = counter + 1
  total = month_pay*counter
  
  
  int_v <- c(int_v, interest)
  net_v <- c(net_v, net)
  new_bal_v <- c(new_bal_v, new_bal)
  total_v <- c(total_v, total)
  
  }
 
if(new_bal < 1000) {interest = new_bal * r
  month_pay = new_bal + interest}
}
month_pay = new_bal + interest
total = total + month_pay 
month_pay_v = c(1000)

schedule <- cbind(month_pay_v, int_v, net_v, new_bal_v, total_v)
schedule[12, 5] <- total

print(total)
print(schedule)



  