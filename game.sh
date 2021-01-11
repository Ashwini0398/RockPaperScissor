#! /bin/bash -x

function player1 
{
	echo -p " enter the player 1 guess"
	read player1
}
function player2 
{
	echo -p "enter the player 2 guess"
	read player2
}

function compareBoth
{
	if [[ $player1 == $player2 ]]
	then
		echo "tie"
	elif [[ $player1 == "rock" && $player2 == "scissors" ]]
	then
		echo "player 1 wins"
	 elif [[ $player1 == "scissors" && $player2 == "rock" ]]
        then
                echo "player 2 wins"
	 elif [[ $player1 == "scissors" && $player2 == "paper" ]]
        then
                echo "player 1 wins"
	 elif [[ $player1 == "paper" && $player2 == "scissors" ]]
        then
                echo "player 2 wins"
	 elif [[ $player1 == "paper" && $player2 == "rock" ]]
        then
                echo "player 1 wins"
	 elif [[ $player1 == "rock" && $player2 == "paper" ]]
        then
                echo "player 2 wins"

	else
		echo " try again"
		main 
	fi
}

function playAgain
{
	echo " want to play again (y/n)"
	read play

	if [[ $play == "y" ]]
	then
		main
	fi
}

function main
{
	player1 
	player2 
	compareBoth
	playAgain 
}

main 
