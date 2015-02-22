#!/usr/bin/perl -w
# Author: 
# Date: 02/20/15
# Professor: 
# Pg. 173, #7 [A-H]
#.
use 5.14.2;
use warnings;
my ($policyNumber, $age, $numOfAccidents, $day, $month, $year, $counter, $continueInt);
my ($lastName, $firstName);
 
use constant lastThreeYears => 3;
sub main {
     setCounter();
     setContinueInt();
     use constant YES => 1;
     use constant MAX_RECURSION => 10;
     while($continueInt == YES) {
          system("cls");
          if($counter < MAX_RECURSION) {
               setMonth();
               setDay();
               setYear();
               setFirstName();
               setLastName();
               setAge();
               setPolicyNumber();
               setNumOfAccidents();
               printInformation();
               setCounter();
               setContinueInt();
          }
     }
}
 
main();
 
 
 sub setContinueInt {
    if(defined $continueInt)
    {
     print("Would you like to continue? (0=no, 1=yes): ");
     chomp($continueInt = <STDIN>)
    }
    else
    {
     $continueInt = 1;
    }
 }
 
 sub setCounter {
     if(!(defined $counter)) {
          $counter = 0;
     }
     else {
          $counter = $counter + 1;
     }
 }
 
sub setMonth {
    my $checkMonth = 0;
    print("Please input the Premium due date for Month: ");
    chomp ($checkMonth = <STDIN>);
    use constant MINMONTH => 1;
    use constant MAXMONTH => 12;
    if($checkMonth >= MINMONTH && $checkMonth <= MAXMONTH)
    {
     $month = $checkMonth;
    }
    else
    {
     $month = 0;
    }
}
 
sub setDay {
     my $checkDay = 0;
     use constant FEBRUARY => 2;
     use constant MINDAY => 1;
     use constant MAXDAYFEB => 29;
     use constant MAXDAYALL => 31;
     print("Please input the Premium due date for the day: ");
     chomp($checkDay = <STDIN>);
     if($checkDay == FEBRUARY)
     {
          if($checkDay >= MINDAY || $checkDay <= MAXDAYFEB)
          {
               $day = $checkDay;
          }
          else
          {
                $day = 0;
          }
     }
     else
     {
           if($checkDay >= MINDAY && $checkDay <= MAXDAYALL)
           {
               $day = $checkDay;
           }
           else
           {
                $day = 0;
           }
     }
}
 
sub setYear {
     print "Please input the Premium due date for the year: ";
     my $checkYear = 0;
     use constant MINYEAR => 1000;
     use constant MAXYEAR => 9999;
     chomp($checkYear = <STDIN>);
     if($checkYear >= MINYEAR && $checkYear <= MAXYEAR)
     {
          $year = $checkYear;
     }
     else
     {
          $year = 0;
     }
}
 
sub setPolicyNumber {
     print "Please input the Policy Number: ";
     my $checkPNum = 0;
     chomp($checkPNum = <STDIN>);
     if($checkPNum !~ /[0-9]/)
     {
          $policyNumber = 0;
     }
     else
     {
          $policyNumber = $checkPNum;
     }
}
 
sub setAge {
     print "Please input the age: ";
     my $checkAge = 0;
     chomp($checkAge = <STDIN>);
     if($checkAge !~ /[0-9]/)
     {
          $age = 0;
     }
     else
     {
          $age = $checkAge;
     }
}
 
sub setNumOfAccidents {
     print "Please input the number of accidents in the last " . lastThreeYears . " years: ";
     my $checkNumAccidents = 0;
     chomp($checkNumAccidents = <STDIN>);
     if($checkNumAccidents !~ /[0-9]/)
     {
          $numOfAccidents = 0;
     }
     else
     {
          $numOfAccidents = $checkNumAccidents;
     }
}
 
sub setFirstName {
     my $checkFirstName;
     print("Please input the First Name: ");
     chomp ($checkFirstName = <STDIN>);
     if($checkFirstName !~ /^[a-zA-Z]{2,20}$/)
     {
          $firstName = "invalid First Name";
     }
     else
     {
          $firstName = $checkFirstName;
     }
}
 
sub setLastName {
     my $checkLastName;
     print("Please input the Last Name: ");
     chomp ($checkLastName = <STDIN>);
     if($checkLastName !~ /^[a-zA-Z]{2,20}$/)
     {
          $checkLastName = "invalid Last Name";
     }
     else
     {
          $lastName = $checkLastName;
     }
}
 
sub getDay {
     return $day;
}
 
sub getMonth {
     return $policyNumber;
}
sub getYear {
     return $year;
}
 
sub getPolicyNumber {
     return $policyNumber;
}
 
sub getAge{
     return $age;
}
 
sub getNumOfAccidents {
     return $numOfAccidents;
}
 
sub getFirstName {
     return $firstName;
}
 
sub getLastName {
     return $lastName;
}

sub printInformation {
     use constant TWENTYONE => 21;
     use constant THIRTYFIVE => 35;
     use constant THIRTY => 30;
     use constant MARCH => 3;
     use constant DAY => 15;
     use constant JANUARY => 1;
     use constant TWENTYSEVENTH => 27;
     use constant TWENTYSIXTEEN => 2016;
     use constant TWENTYFIVTEEN => 2015;
     use constant ONETHOUSAND => 1000;
     use constant FOURTHOUSAND => 4000;
     use constant MAY => 5;
     use constant APRIL => 4;
     system("cls");
     if($policyNumber >= ONETHOUSAND && $policyNumber <= FOURTHOUSAND && ($month == APRIL || $month == MAY) && $numOfAccidents < 3)
     {
          print("Has a Policy Number between 1000 - 4000, due before APRIL/MAY, and has fewer than 3 accidents!");
          print("First Name: " . $firstName . ", Last Name: " . $lastName . "\n");
          print("Age: " . $age . "\n");
          print("Number of accidents in the last " . lastThreeYears . " years: " . $numOfAccidents . "\n");
          print("Policy Number: " . $policyNumber . "\n");
          print("Premium is due:  " . $day . "/" . $month . "/" . $year . "\n");
     }
     elsif(($day <= TWENTYSEVENTH && $month == JANUARY && $year <= TWENTYSIXTEEN) || ($day <= TWENTYSEVENTH && $year < TWENTYSIXTEEN))
     {
     if($month <= MARCH && $day <= DAY)
     {
          if($age > THIRTYFIVE)
          {
          print("First Name: " . $firstName . ", Last Name: " . $lastName . "\n");
          print("At least " . THIRTYFIVE . " years old, Age: " . $age . "\n");
          print("Number of accidents in the last " . lastThreeYears . " years: " . $numOfAccidents . "\n");
          print("Policy Number: " . $policyNumber . "\n");
          print("Premium is due up to January 1st, 2016:  " . $day . "/" . $month . "/" . $year . "\n");
          }
     
     elsif($age >= TWENTYONE)
     {
          if($age == THIRTY)
          {
               print("First Name: " . $firstName . ", Last Name: " . $lastName . "\n");
               print("No more than " . THIRTY . " years old, Age: " . $age . "\n");
               print("Number of accidents in the last " . lastThreeYears . " years: " . $numOfAccidents . "\n");
               print("Policy Number: " . $policyNumber . "\n");
               print("Premium is due up to January 1st, 2016:  " . $day . "/" . $month . "/" . $year . "\n");
          }
          else
          {
               print("First Name: " . $firstName . ", Last Name: " . $lastName . "\n");
               print("At least " . TWENTYONE . " years old, Age: " . $age . "\n");
               print("Number of accidents in the last " . lastThreeYears . " years: " . $numOfAccidents . "\n");
               print("Policy Number: " . $policyNumber . "\n");
               print("Premium is due up to January 1st, 2016:  " . $day . "/" . $month . "/" . $year . "\n");
          }
     }
     
          else
          {
               #DO NOTHING
          }
     }
     else
     {
          if($age > THIRTYFIVE)
     {
     print("First Name: " . $firstName . ", Last Name: " . $lastName . "\n");
     print("At least " . THIRTYFIVE . " years old, Age: " . $age . "\n");
     print("Number of accidents in the last " . lastThreeYears . " years: " . $numOfAccidents . "\n");
     print("Policy Number: " . $policyNumber . "\n");
     print("Premium is due up to January 1st, 2016:  " . $day . "/" . $month . "/" . $year . "\n");
     }
     
     elsif($age >= TWENTYONE)
     {
          if($age == THIRTY)
          {
               print("First Name: " . $firstName . ", Last Name: " . $lastName . "\n");
               print("No more than " . THIRTY . " years old, Age: " . $age . "\n");
               print("Number of accidents in the last " . lastThreeYears . " years: " . $numOfAccidents . "\n");
               print("Policy Number: " . $policyNumber . "\n");
               print("Premium is due up to January 1st, 2016:  " . $day . "/" . $month . "/" . $year . "\n");
          }
          else
          {
               print("First Name: " . $firstName . ", Last Name: " . $lastName . "\n");
               print("At least " . TWENTYONE . " years old, Age: " . $age . "\n");
               print("Number of accidents in the last " . lastThreeYears . " years: " . $numOfAccidents . "\n");
               print("Policy Number: " . $policyNumber . "\n");
               print("Premium is due up to January 1st, 2016:  " . $day . "/" . $month . "/" . $year . "\n");
          }
     }
     
     else
     {
          #DO NOTHING
     }
     }
        
     }
     
     elsif($day == TWENTYSEVENTH && $month == APRIL && $year == TWENTYFIVTEEN)
     {
     if($month <= MARCH && $day <= DAY)
     {
          if($age > THIRTYFIVE)
          {
          print("First Name: " . $firstName . ", Last Name: " . $lastName . "\n");
          print("At least " . THIRTYFIVE . " years old, Age: " . $age . "\n");
          print("Number of accidents in the last " . lastThreeYears . " years: " . $numOfAccidents . "\n");
          print("Policy Number: " . $policyNumber . "\n");
           print("Premium is due " . $day . "/" . $month . "/" . $year . "\n");
          }
     
     elsif($age >= TWENTYONE)
     {
          if($age == THIRTY)
          {
               print("First Name: " . $firstName . ", Last Name: " . $lastName . "\n");
               print("No more than " . THIRTY . " years old, Age: " . $age . "\n");
               print("Number of accidents in the last " . lastThreeYears . " years: " . $numOfAccidents . "\n");
               print("Policy Number: " . $policyNumber . "\n");
                print("Premium is due " . $day . "/" . $month . "/" . $year . "\n");
          }
          else
          {
               print("First Name: " . $firstName . ", Last Name: " . $lastName . "\n");
               print("At least " . TWENTYONE . " years old, Age: " . $age . "\n");
               print("Number of accidents in the last " . lastThreeYears . " years: " . $numOfAccidents . "\n");
               print("Policy Number: " . $policyNumber . "\n");
                print("Premium is due " . $day . "/" . $month . "/" . $year . "\n");
          }
     }
     
          else
          {
               #DO NOTHING
          }
     }
     else
     {
          if($age > THIRTYFIVE)
     {
     print("First Name: " . $firstName . ", Last Name: " . $lastName . "\n");
     print("At least " . THIRTYFIVE . " years old, Age: " . $age . "\n");
     print("Number of accidents in the last " . lastThreeYears . " years: " . $numOfAccidents . "\n");
     print("Policy Number: " . $policyNumber . "\n");
      print("Premium is due " . $day . "/" . $month . "/" . $year . "\n");
     }
     
     elsif($age >= TWENTYONE)
     {
          if($age == THIRTY)
          {
               print("First Name: " . $firstName . ", Last Name: " . $lastName . "\n");
               print("No more than " . THIRTY . " years old, Age: " . $age . "\n");
               print("Number of accidents in the last " . lastThreeYears . " years: " . $numOfAccidents . "\n");
               print("Policy Number: " . $policyNumber . "\n");
                print("Premium is due " . $day . "/" . $month . "/" . $year . "\n");
          }
          else
          {
               print("First Name: " . $firstName . ", Last Name: " . $lastName . "\n");
               print("At least " . TWENTYONE . " years old, Age: " . $age . "\n");
               print("Number of accidents in the last " . lastThreeYears . " years: " . $numOfAccidents . "\n");
               print("Policy Number: " . $policyNumber . "\n");
                print("Premium is due " . $day . "/" . $month . "/" . $year . "\n");
          }
     }
     
     else
     {
          #DO NOTHING
     }
     }
        
     }
     
     else
     {
     if($month <= MARCH && $day <= DAY)
     {
          if($age > THIRTYFIVE)
          {
          print("First Name: " . $firstName . ", Last Name: " . $lastName . "\n");
          print("At least " . THIRTYFIVE . " years old, Age: " . $age . "\n");
          print("Number of accidents in the last " . lastThreeYears . " years: " . $numOfAccidents . "\n");
          print("Policy Number: " . $policyNumber . "\n");
          print("Premium due date: " . $day . "/" . $month . "/" . $year . "\n");
          }
     
     elsif($age >= TWENTYONE)
     {
          if($age == THIRTY)
          {
               print("First Name: " . $firstName . ", Last Name: " . $lastName . "\n");
               print("No more than " . THIRTY . " years old, Age: " . $age . "\n");
               print("Number of accidents in the last " . lastThreeYears . " years: " . $numOfAccidents . "\n");
               print("Policy Number: " . $policyNumber . "\n");
               print("Premium due date: " . $day . "/" . $month . "/" . $year . "\n");
          }
          else
          {
               print("First Name: " . $firstName . ", Last Name: " . $lastName . "\n");
               print("At least " . TWENTYONE . " years old, Age: " . $age . "\n");
               print("Number of accidents in the last " . lastThreeYears . " years: " . $numOfAccidents . "\n");
               print("Policy Number: " . $policyNumber . "\n");
               print("Premium due date: " . $day . "/" . $month . "/" . $year . "\n");
          }
     }
     
          else
          {
               #DO NOTHING
          }
     }
     else
     {
          if($age > THIRTYFIVE)
     {
     print("First Name: " . $firstName . ", Last Name: " . $lastName . "\n");
     print("At least " . THIRTYFIVE . " years old, Age: " . $age . "\n");
     print("Number of accidents in the last " . lastThreeYears . " years: " . $numOfAccidents . "\n");
     print("Policy Number: " . $policyNumber . "\n");
     print("Premium due date: " . $day . "/" . $month . "/" . $year . "\n");
     }
     
     elsif($age >= TWENTYONE)
     {
          if($age == THIRTY)
          {
               print("First Name: " . $firstName . ", Last Name: " . $lastName . "\n");
               print("No more than " . THIRTY . " years old, Age: " . $age . "\n");
               print("Number of accidents in the last " . lastThreeYears . " years: " . $numOfAccidents . "\n");
               print("Policy Number: " . $policyNumber . "\n");
               print("Premium due date: " . $day . "/" . $month . "/" . $year . "\n");
          }
          else
          {
               print("First Name: " . $firstName . ", Last Name: " . $lastName . "\n");
               print("At least " . TWENTYONE . " years old, Age: " . $age . "\n");
               print("Number of accidents in the last " . lastThreeYears . " years: " . $numOfAccidents . "\n");
               print("Policy Number: " . $policyNumber . "\n");
               print("Premium due date: " . $day . "/" . $month . "/" . $year . "\n");
          }
     }
     
     else
     {
          #DO NOTHING
     }
     }
        
     }
}