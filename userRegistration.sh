#!/bin/bash -x

function validate()
{
input=$1 
key=0
pattern="^[A-Z]{1}[a-z]{2}"
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

echo "FirstName should starts with capital letter"
echo "Enter Your First Name "
read firstname
validate $firstname

echo "LastName should starts with capital letter"
echo "Enter Your Last Name "
read lastname
validate $lastname
