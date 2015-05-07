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
use constant NOTVERIFIED => 0;
use constant THIRDATTEMPT => 3;
my ($userInputAuth, $currentMoney, $cardNumber, $cardPin, $countAuthVerify); #int
my ($chNumber, $chPin, $withdrawl, $deposit, $transferFunds, $pinNumber, $counter, $continue); #int
my ($cardHolderName, $chName, $currentCMD); #string
sub main {
    setCounter();
    setContinue();
    while ($continue == YES) {
     cleanValues();
     setCardHolderName();
     setCardNumber();
     setpinNumber();
     runSecurityAuth();
     if($countAuthVerify < THIRDATTEMPT)
     {
          if($userInputAuth == VERIFIED)
          {
               chooseWhatToDo();
               $userInputAuth = NOTVERIFIED;
          }
     }
     system("cls");
     setContinue();
     system("cls");
    }
}

main();

sub cleanValues {
     $countAuthVerify = 0;
    $cardNumber = 0;
    $cardPin = 0;
    $currentMoney = 1000;
    
}

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
     if($currentCMD eq(WITHDRAWL))
     {
          setWithdrawl();
     }
     elsif($currentCMD eq(DEPOSIT))
     {
          setDeposit();
     }
     elsif($currentCMD eq(TRANSFER))
     {
          setTransferFunds();
     }
     else
     {
          print("Please input a valid option!\n");
          system("cls");
     }
}

sub runSecurityAuth {
     if($chName eq(CARDHOLDERNAME) || $chNumber != CARDNUMBER || $chPin != CARDPINNUM)
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
     print("Please input amount to withdrawl: ");
     chomp($withdrawl = <STDIN>);
     
}

sub setDeposit {
     print("Please input amount you would like to deposit: ");
     chomp($deposit = <STDIN>)
}

sub setCardHolderName {
     print("[1/3] For security reasons, please input the Card Holder's Name: ");
     chomp ($cardHolderName = <STDIN>);
}

sub setTransferFunds {
     print("Please input the amount you would like to transfer: ");
     chomp($transferFunds = <STDIN>);
}

sub setpinNumber {
     print("[3/3] For Security reasons, please input the PIN Number: ");
     chomp($chPin = <STDIN>);
}

sub setCardNumber {
     print("[2/3] For security reasons, please input the Card Number: ");
     chomp($chNumber = <STDIN>);
}

sub getWithdrawl {
     print($withdrawl . "\n");
}

sub getDeposit {
     print($deposit . "\n");
}

sub getTransferFunds {
     print($transferFunds . "\n");
}

sub getpinNumber {
     print("PIN: " . $pinNumber)
}
