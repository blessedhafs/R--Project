# Menu selection using switch

user_input ="exit"

message <-  switch(user_input,
  balance = "Your current balance is $1000.",
  deposit = "Enter the amount you wish to deposit.",
  withdraw = "Enter the amount you wish to withdraw.",
  exit = "Thank you for using our banking services.",
  "Invalid selection. Please choose a valid option."
)

if(user_input=="exit"){
  print(message)
}else{
  print(paste("Thank you for banking with us,", message))
}

