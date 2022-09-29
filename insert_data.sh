#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE TABLE games, teams")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do 
#insert team's name
if [[ $WINNER != "winner" || $OPPONENT != "opponent" ]]
then
WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
#insert name from WINNER column
if [[ -z $WINNER_ID ]] 
then
echo $($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
fi
#insert name from OPPONENT collumn
if [[ -z $OPPONENT_ID ]]
then
echo $($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
fi
fi
#end of insert team name
done

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do 
#insert data to games table
if [[ $YEAR != "year" ]]
then
WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
INSERT_RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
if [[ $INSERT_RESULT == "INSERT 0 1" ]]
then
echo inserted into games, $WINNER, $OPPONENT
fi
fi
done