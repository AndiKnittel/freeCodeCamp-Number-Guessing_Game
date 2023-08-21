#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess --no-align --tuples-only -c"

SECRET_NUMBER=$((1 + $RANDOM % 1000))
echo -e "\nEnter your username:\n"
read USERNAME

VALID_USER=$($PSQL "SELECT username FROM users WHERE username = '$USERNAME'")

if [[ -z $VALID_USER ]]
then
  INSERT_USER=$($PSQL "INSERT INTO users (username) VALUES ('$USERNAME')")
  echo "Welcome, $USERNAME! It looks like this is your first time here."

else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games INNER JOIN users USING(user_id) WHERE username = '$USERNAME'")
  BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM games INNER JOIN users USING(user_id) WHERE username = '$USERNAME'")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
# get user_id
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")

echo "Guess the secret number between 1 and 1000:"
read GUESS
TRIES=1

  while [[ ! $GUESS -eq $SECRET_NUMBER ]]
  do
    if [[ ! $GUESS =~ ^[0-9]+$ ]]
    then
      echo "That is not an integer, guess again:"
      read GUESS
    else
    TRIES=$(expr $TRIES + 1)
      if [[ $GUESS -gt $SECRET_NUMBER ]]
      then
        echo "It's lower than that, guess again:"
        read GUESS
      elif [[ $GUEES -lt $SECRET_NUMBER ]]
      then
        echo "It's higher than that, guess again:"
        read GUESS    
      fi
    fi
  done

INSERT_GAMES=$($PSQL "INSERT INTO games (user_id, number_of_guesses) VALUES ($USER_ID, $TRIES)")
PLURAL_TRIES=$(if [[ $TRIES -eq 1 ]]; then echo "try"; else echo "tries"; fi)
echo "You guessed it in $TRIES tries. The secret number was $SECRET_NUMBER. Nice job!"
