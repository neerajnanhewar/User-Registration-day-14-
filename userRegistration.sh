x#!/bin/bash 
function user_validate(){
input=$1
pattern=$2
key=0
while [ $key -eq 0 ]
do
if [[ $input =~ $pattern ]]
then
        echo $input "is valid INPUT"
        key=1
else
        echo "Not valid INPUT"
        read input
fi
done
}

pattern="^([A-Z]{1})[a-z]{2}"

echo "FirstName should starts with capital letter"
echo "Enter Your First Name "
read firstname
user_validate $firstname $pattern

echo "LastName should starts with capital letter"
echo "Enter Your Last Name "
read lastname
user_validate $lastname $pattern

echo "Enter Your Last Email "
read email
pattern="^[a-zA-Z0-9]{1,}([._+-][0-9a-zA-Z]+)*[@]{1}[0-9a-zA-Z]{1,}\.[a-zA-Z]{2,4}([.][a-zA-Z]{2}){0,1}$"
user_validate $email $pattern

echo "Enter the valid mobile number with country code "
read mo_num
pattern="^[0-9]{2}[ ]{1}[0-9]{10}$"
user_validate "$mo_num" "$pattern"

echo "Password should be minimum 8 charcter long"
echo "Enter password.."
read pass
pattern="^.*([A-Z]{1,}).*([0-9]{1,}).{6,}"
user_validate $pass $pattern
