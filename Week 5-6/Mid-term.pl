## Assignment: Project 4
## Author
## Version: 03.12.2015.1
## Purpose: Homework

use 5.14.2;
use warnings;

use constant INITIALCHECKINGS => 1000;
use constant INITIALSAVINGS => 1000;
use constant YES => 1;
use constant CARDHOLDERNAME => "Bob";
use constant CARDNUMBER => 13371337;
use constant CARDPINNUM => 1337;
use constant VERIFIED => 1;
use constant THIRDATTEMPT => 3;
use constant NOTVERIFIED => 0;
my ($withdrawl, $deposit, $transferFunds, $pinNumber, $counter, $continue, $userInputAuth $currentMoney, $cardHolderName, $cardNumber, $cardPin, $currentCMD, $countAuthVerify);
my ($chName, $chNumber, $chPin);

sub main {
    setCounter();
    setContinue();
    while ($continue == YES) {
     chooseWhatToDo();
     setCardHolderName();
     setCardNumber();
     setPinNumber();
     runSecurityAuth();
     while($countAuthVerify < THIRDATTEMPT)
     {
     if($userInputAuth == VERIFIED)
     {
          
     }
     }
     
    }
}

main();


sub setCounter {
	if (defined $counter)
     {
		$counter++;
	}
     else
     {
		$counter = 0;
	}
}

sub setContinue {
     if (defined $continue) {
		$continue = -1;
		while ($continue !~ /[0-9]/ || $continue > 1 || $continue < 0) {
			print "\n\nDo you want to continue (0=no, 1=yes)? ";
			chomp ($continue = <STDIN>);
			if ($continue !~ /[0-9]/ || $continue > 1 || $continue < 0) {
				say "Incorrect input. Please try again";
				sleep 1;
				system ("cls");
			}
		}
     } else {
          $continue = 1;
     }
}


sub chooseWhatToDo {
     use constant WITHDRAWL => "W";
     use constant DEPOSIT => "D";
     use constant TRANSFER => "T";
     print("What would you like to do?\n" . "W - Withdrawl, D - Deposit, T - TransferFunds: ");
     chomp ($currentCMD = <STDIN>);
     if($currentCMD == WITHDRAWL)
     {
          
     }
     elsif($currentCMD == DEPOSIT)
     {
          
     }
     
     elsif($currentCMD == TRANSFER)
     {
          
     }
     else
     {
          print("Please input a valid option!\n");
          system("cls");
     }
}

sub runSecurityAuth {
     if($chName != $cardHolderName or $chNumber != $cardNumber or $cardPin != $cardPin)
     {
          print("Failed validating the Card Holders information.\n");
          $userInputAuth = NOTVERIFIED;
          $countAuthVerify++;
          system("cls");
     }
     else
     {
          $userInputAuth = VERIFIED;
          $countAuthVerify = 0;
          system("cls");
     }
     ## $cardHolderName, $cardNumber, $cardPin
     ## CARDHOLDERNAME, CARDNUMBER, CARDPINNUM
     
}


sub setWithdrawl {
     print("Please input amount to withdrawl: ")
     chomp($withdrawl = <STDIN>);
     
}

sub setDeposit {
     
}

sub setCardHolderName {
     print("[1/3] For security reasons, please input the Card Holder's Name: ");
     chomp ($cardHolderName = <STDIN>);
}

sub setTransferFunds {
     
}

sub setpinNumber {
     print("[3/3] For Security reasons, please input the PIN Number: \n");
     chomp($chPin = <STDIN>);
}

sub setCardNumber {
     print("[2/3] For security reasons, please input the Card Number: ");
     chomp($chNumber = <STDIN>);
}

sub getWithdrawl {
     print("");
}

sub getDeposit {
     print("");
}

sub getTransferFunds {
     print("");
}

sub getpinNumber {
     print("PIN: " . $pinNumber)
}
