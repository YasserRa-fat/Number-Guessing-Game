#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read username

USER_NAME=$($PSQL "SELECT username FROM users WHERE username='$username'")
GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE username='$username'")
BEST_GAME=$($PSQL "SELECT MAX(attempts) FROM users WHERE username='$username'")
NUMBER=$((RANDOM % 1000 + 1))

if [[ $USER_NAME ]]
then 
echo "Welcome back, $username! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."

else 
ADD_USER=$($PSQL "INSERT INTO users(username,games_played,attempts) VALUES('$username',0,0)")
echo "Welcome, $username! It looks like this is your first time here."

fi

NUMBER_FUNC(){
read NUMBER_GUESS
}
echo "Guess the secret number between 1 and 1000:"
NUMBER_FUNC
echo $NUMBER
#NUMBER_FUNC
#
let I=1 
while [[ $NUMBER_GUESS -ne $NUMBER ]]
  do
  if [[ ! $NUMBER_GUESS =~ ^[0-9]+$ ]]
  then
  echo "That is not an integer, guess again:"
  I=$((I+1))
  elif [[ $NUMBER_GUESS -gt $NUMBER ]]
  then
  I=$((I+1))
  echo "It's lower than that, guess again:"
  else
  I=$((I+1))
  echo "It's higher than that, guess again:"
  fi
  NUMBER_FUNC
 done
echo "You guessed it in $I tries. The secret number was $NUMBER_GUESS. Nice job!"
ATTEMPTS=$($PSQL "UPDATE users SET attempts = $I WHERE username = '$username'")
GAMES=$($PSQL "UPDATE users SET games_played=games_played+1")
   

