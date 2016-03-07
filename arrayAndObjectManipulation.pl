
use strict;
use warnings;
# use Data::Dumper qw(Dumper);

###How to add and remove things from arrays

# my @names = ("Anna", "Rohan", "Kate", "Ruan");

#Pop the last item off the end of an array

# my $last = pop @names;
# print $last; #Ruan

#Push a new item to the end of an array

# push @names, "Jane";
# print @names;

#Shift- move the whole array to the left. Remove the first element from the array

# my $first = shift @names;
# print $first;

#Unshift- add to the front of an array

# unshift @names, "Chris";
# print @names;

# my @fruits = qw(apple red orange orange grape purple);

# my %color_of = @fruits;

#pretty print the hash and array: if odd numbers of elements in array then the last value = undef
# print Dumper \@fruits;
# print Dumper \%color_of;


## Sort a hash

my %planets = (
   Mercury => 0.4,
   Venus   => 0.7,
   Earth   => 1,
   Mars    => 1.5,
   Ceres   => 2.77,
   jupiter => 5.2,#lower case to check sorting properly
   Saturn  => 9.5,
   Uranus  => 19.6,
   Neptune => 30,
   Pluto   => 39,
   Charon  => 39,
);
 
#printf and the file format tells the computer how to render the values to print

# foreach my $name (keys %planets) {
#   printf "%-8s %s\n", $planets{$name};
# }

# foreach my $name (sort keys %planets) {
#   printf "%-8s %s\n", $name, $planets{$name};
# }

# foreach my $name (sort {lc $a cmp lc $b} keys %planets) {
#   printf "%-8s %s\n", $name, $planets{$name};
# }

# 

# my @foods = ('banana', 'pear', 'icecream', 'beer', 'melon', 'chips');

# my $count = 0;

# foreach (@foods) {
#   count++;
# }




