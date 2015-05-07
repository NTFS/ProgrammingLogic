## Assignment: Project 4
## Author
## Version: 03.12.2015.1
## Purpose: Homework

use 5.14.2;
use warnings;


my ($continue, $counter, $totalDonations);
my $arrayLocation = 0;
my @teacherNames;
my @booksDonated;
use constant YES => 1;
use constant classrooms => 30;

sub main {
     setContinue();
	setCounter();
while ($continue == YES)
     {
     setteacherNames();
     setbooksDonated();
     
     setarrayLocation();
     
     setContinue();
     }
}

main();

     sub setCounter
     {
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
          if (defined $continue)
          {
               $continue = -1;
               while ($continue !~ /[0-9]/ || $continue > 1 || $continue < 0)
               {
                    print "\n\nDo you want to continue (0=no, 1=yes)? ";
                    chomp ($continue = <STDIN>);
                    if ($continue !~ /[0-9]/ || $continue > 1 || $continue < 0)
                    {
                         say "Incorrect input. Please try again";
                         sleep 1;
                         system ("cls");
                    }
               }
          }
          else
          {
               $continue = 1;
          }
     }
     
     sub setarrayLocation {
          $arrayLocation = $arrayLocation + 1;
     }
     
     sub getarrayLocation {
          return $arrayLocation;
     }
     
     sub setteacherNames {
          if ($arrayLocation <= classrooms)
          {
               print("Please input Teacher's Name: ");
               chomp($teacherNames[$arrayLocation] = <STDIN>);
          }
          else
          {
               say "There is already a Teacher for each classroom!";
               system ("cls");
          }
     }
     
     sub setbooksDonated
     {
           if($arrayLocation <= classrooms)
           {
               print("Please input the number of books donated: ");
               chomp($booksDonated[$arrayLocation] = <STDIN>);
           }
           else
           {
               #shouldn't ever be called
               say "There is already a Teacher for each classroom!";
               system ("cls");
           }
     }
     
     sub getteacherNames
     {
          foreach my $teachers (@teacherNames)
          {
               print("$teachers");
          }
         # for(int i = 0; i < $arrayLocation; i++)
         # {
         #      print("Classroom " . $arrayLocation[$i] . " Teacher: " . $teacherNames[$i]);
         # }
     }
     
     
     sub getBooksDonated
     {
          for(my $i = 0; $i <= classrooms; $i++)
          {
               $totalDonations = $totalDonations + $booksDonated[$i];
          }
          print("Books Donated: " . $totalDonations);
     }
     
     sub printTeacherInfos {
          for(my $i = 0; $i <= classrooms; $i++)
          {
               print("Classroom: " . $i . "\nTeacher: " . $teacherNames[$i] . "\nBooks donated: " . @booksDonated[$i]);
          }
     
     sub mostBooksDonated {
           for(my $i = 0; $i <= classrooms; $i++)
          {
               my $tempClassroomNumber;
               my @sameDonationsArray;
               if($tempClassroomNumber < @booksDonated[$i])
               {
                    $tempClassroomNumber = @booksDonated[$i];
                    foreach my $value (@sameDonationsArray)
                    {
                         @sameDonationsArray = "";
                    }
                    @sameDonationsArray[0] = $tempClassroomNumber;
               }
               else if(@booksDonated[$i] == @sameDonationsArray[$i])
               {
                    @sameDonationsArray = $value;
               }
          }
     }
     