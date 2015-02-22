#-# Assignment: Project 1                           #-#
#-# Professor:                                      #-#
#-# Class: Intro To Programming Logic               #-#
#-# Author:                                         #-#
#-# Version: 02/05/15                               #-#
#-# Purpose: Homework (College)                     #-#
#.
use warnings;

my ($lotnum, $bedRoomnum, $bathroomnum, $carsnum, $totalOutput);
use constant _basePrice => 50000;
use constant _eachBedroom => 17000;
use constant _eachBathroom => 12500;
use constant _eachCar => 6000;

sub main
{
     system("cls");
     setLotNumber();
     
     setNumofBedrooms();
     setNumofBathrooms();
     setNumofCars();
     
     priceCars();
     priceBathroom();
     priceBedroom();
     calcPrices();
     runOutput();
}

main();

sub setLotNumber()
{
     print("Please input a lot number: ");
     chomp ($lotnum = <STDIN>);
}

sub setNumofBedrooms()
{
     print("Please input number of bedrooms: ");
     chomp ($bedRoomnum = <STDIN>);
}

sub setNumofBathrooms()
{
     print("Please input number of bathrooms: ");
     chomp ($bathroomnum = <STDIN>);
}

sub setNumofCars()
{
     print("Please input the number of cars the garage can hold: ");
     chomp ($carsnum = <STDIN>);
}

sub priceCars()
{
     $carsnum = $carsnum * _eachCar;
}

sub priceBathroom()
{
     $bathroomnum = $bathroomnum * _eachBathroom;
}

sub priceBedroom()
{
     $bedRoomnum = $bedRoomnum * _eachBedroom;
}

sub calcPrices()
{
     $totalOutput = $bedRoomnum + $carsnum + $bathroomnum + _basePrice;
}

sub runOutput()
 {
     print("The total cost is: \$". $totalOutput . " \n");
 }
