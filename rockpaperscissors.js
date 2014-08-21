/*var userChoice = prompt("Do you choose rock, paper or scissors?");
var computerChoice = Math.random();
if (computerChoice < 0.34) {
	computerChoice = "rock";
} else if(computerChoice <= 0.67) {
	computerChoice = "paper";
} else {
	computerChoice = "scissors";
} console.log("Computer: " + computerChoice);*/


/*This function compares the choice the user 
and computer makes and returns the winner */
function compare (choice1, choice2) {

/*if both selections are the same prompt that the game is a tie*/  
  if (choice1 === choice2) {
    return "The result is a tie!";0
/*if rock and scissors are chosen, then rock wins */
  } else if (choice1 === "rock") {
  		if (choice2 === "scissors") {
  			return "rock wins";
/*if rock and paper are chosen, paper wins*/  		
  		} else { 
  			return "paper wins";
  		}
/*if scissors and paper are chosen */  	
  	} else if (choice1 === "scissors") {
  			if (choice2 === "paper") {
  				return "scissors wins";
/*if scissors and rock are chosen, paper wins*/
  			} else {

  				return "rock wins";
  			}
  	}

  }


}



