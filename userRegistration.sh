#!/bin/bash -x
echo "Name should starts with capital"
echo "Enter Your First Name " 
read firstname
pattern="^[A-Z]{1}[a-z]{2}"
if [[ $firstname =~ $pattern ]]
then
	echo $firstname "is valid userName"
else
	echo "Not valid username"
fi
