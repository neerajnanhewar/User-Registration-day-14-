#!/bin/bash -x

function user_validate()
{
input=$1 
key=0
pattern="^([A-Z]{1})[a-z]{2}"
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

function email_validate()
{
input=$1
key=0
email_ptrn="^[a-zA-Z0-9]{1,}([._+-][0-9a-zA-Z]+)*[@]{1}[0-9a-zA-Z]{1,}\.[a-zA-Z]{2,4}([.][a-zA-Z]{2}){0,1}$"
while [ $key -eq 0 ]
do
if [[ $input =~ $email_ptrn ]]
then
   echo $input "is valid INPUT"
   key=1
else
   echo "Not valid INPUT"
   read input
fi
done


}

echo "FirstName should starts with capital letter"
echo "Enter Your First Name "
read firstname
user_validate $firstname

echo "LastName should starts with capital letter"
echo "Enter Your Last Name "
read lastname
user_validate $lastname

echo "Enter Your Last Email "
read email
email_validate $email

