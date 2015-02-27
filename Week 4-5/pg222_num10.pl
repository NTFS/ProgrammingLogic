## Assignment: Pg.222, Number 10
## Author:
## Version: 02.26.15.01
## Purpose: Homework - Programming Logic

use 5.14.2;
use warnings;

my ($accountNum, $purchasePrice, $continueInt, $totalLeft, $setContinuous);
my $customerName;

use constant STOREINTEREST => .0125;
use constant TWENTYFIVE => 25;
use constant TWELVEMONTHS => 12;
use constant SEVENPERCENT => .07;
sub main
{
     setContinueInt();
	use constant YES => 1;
     while ($continueInt == YES)
     {
          system("cls");
          setAccountNum();
          setCustomerName();
          setpurchasePrice();
          settotalLeft();
          caclulateInfos();
          setContinueInt();
     }
}

main();

sub getContinuous()
{
     return $setContinuous;
}

sub gettotalLeft()
{
     return $totalLeft;
}

sub settotalLeft()
{
     $totalLeft = $purchasePrice;
}

sub makesPayment()
{
     my $paidAmount;
     $paidAmount = $totalLeft * SEVENPERCENT;
     $totalLeft = $totalLeft - $paidAmount;
}

sub caclulateInfos()
{
     print("\n\nAccount Number: " . $accountNum . ", ");
     print("Customer: " . $customerName . " \n");
     for(my $i = 1; $i <= TWELVEMONTHS; $i++)
     {
          if($totalLeft > TWENTYFIVE)
          {
          $totalLeft = $totalLeft + ($totalLeft * STOREINTEREST);
          print("Month " . $i . ": " . $totalLeft . "\n");
          makesPayment();
          }
          else
          {
               print("Less than \$" . TWENTYFIVE . ".00\n");
               last;
          }
     }
}

sub setContinueInt {
     if (defined $continueInt) {
          print "Do you want to continue? (0 = no, 1 = yes): ";
          chomp ($continueInt = <STDIN>);
     } else {
          $continueInt = 1;
     }
}

sub getAccountNum()
{
     return $accountNum;
}

sub setAccountNum()
{
     my $accountNumber;
     print("Please input the account number: ");
     chomp($accountNumber = <STDIN>);
     #RUN CHECK IF A # //regex
     $accountNum = $accountNumber;
}

sub getpurchasePrice()
{
     return purchasePrice();
}

sub setpurchasePrice()
{
     my $purchasePricein;
     print("Please input the purchase price: ");
     chomp($purchasePricein = <STDIN>);
     #RUN CHECK if a #; //regex
     $purchasePrice = $purchasePricein;
}

sub getCustomerName()
{
     return $customerName;
}

sub setCustomerName()
{
     my $customerNamein;
     print("Please input customer name: ");
     chomp($customerNamein = <STDIN>);
     #RUN CHECK if string; //regex
     $customerName = $customerNamein;
}