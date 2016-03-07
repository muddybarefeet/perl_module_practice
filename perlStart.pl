
use strict;
use warnings;

# ### Variables

# #Scalars: single value

# my $animal = "penguin";
# my $number = 204;

# #Arrays: list of values

# my @animals = ('penguin', 'badger', 'dolphin');
# my @mixed = (4, 'home', 2.45);

# my $second = $animals[1];

#Hashes: key-value pairs

# my %fruit_color = (
#   apple => "green",
#   banana => "yellow",
#   tomato => "red"
# );

# my $color = $fruit_color{apple};


### References:

# More complex data types can be constructed using references, allowing you to build arrays and hases within arrays and hashes

# my $array_ref = \@array; -----------------------------------------------??!
# my $hash_ref = \%hash;
# my @array_of_arrays = (\@array1, \@array2, \@array3);

# my $scalar = "This is a scalar";
# my $scalar_ref = \$scalar;

# print "Value: " . $scalar . "\n"; #this prints the sentence
# print "Reference: " . $scalar_ref . "\n"; #this prints the reference in memory
# print "Dereferenced: " . $$scalar_ref . "\n"; #the double $$ dereferences the value

## Dereferencing with arrays

# my $fruits_ref = ['apple','banana','orange'];
# my @array = @$fruits_ref;

# print "Reference: $fruits_ref\n";
# print "Dereferenced:  @array\n"; ##if quotes not around the code then print the length

## Dereferencing with hashes

# my $hash_ref = {anna=>5, rohan=>7};
# my %hash = %$hash_ref;

# print "Reference: $hash_ref\n";
# print "Dereferenced:\n";

# foreach my $k (keys %hash) {
#   print "$k: $hash{$k}\n";
# }

# my $sub_ref = sub { print "In a subroutine\n" };

# &$sub_ref(); # & before the variable allows the function to run

## Another similar way of dereferencing is to use a block (in curly braces)
## the block is helpful when your reference is stored in a hash or
## other data structure:

# my %hash = (frogs => sub {print "Frogs are cool!\n"}); -----------------------------?! how know a dereference?

# &{$hash{frogs}};

# the arrow operator also allows you to dereference to arrays or hashes

# my $array_ref = ['apple','crunch','icecream'];
# print "My first fruit is: " . $array_ref->[0] . "\n";

# my $hash_ref = {apple=>"green", berry=>"blue"};
# # print "My second fruit's color is: " . $hash_ref->{berry} . "\n";

# foreach my $k (keys %$hash_ref) { # $k is the name of each key in the hash
#   print "$k: " . $hash_ref->{$k} . "\n"; # $hash_ref is the pointer and that ever is that the key $k then show
# }

# my %hash = sub {print "Frogs Rock My Socks!\n"};
# $hash{frog}->();

## The ref operator:

# This tells you what type of reference your variable is. This means that you can write a subroutine 
# that takes a different action based on the type of reference it received.

# sub write_to_file ($$);

# open (FILEHANDLE, ">output.txt") or die $!; #stes FILEHANDEL to be the reference? for the file

# # print write_to_file(\*FILEHANDLE, "A log");
# # print write_to_file(\*FILEHANDLE, ['pear', 'peach', 'plum', 'prune', 'passionfruit']);
# # print write_to_file(\*FILEHANDLE, {anna=>"penguin", rohan=>"bearcub"});

# close FILEHANDLE; 

# sub write_to_file ($$) {
#   my ($filehandle, $message) = @_; #two variables passed in
#   if (ref($message) eq 'ARRAY') {
#     print "writing array";
#     print $filehandle "@$message\n";
#   } elsif (ref($message) eq 'HASH') {
#     print "writing hash";
#     foreach my $k (keys %$message) {
#       print $filehandle "$k: " . $message->{$k} . "\n";
#     }
#   } else {
#     print "writing scalar";
#     print $filehandle "$message\n"; #1 was returned to the terminal and the message to the file
#   }
# }

### Looping
# eq is for comparing strings; == is for comparing numbers.

# if ($var) {
#   ...
# } elsif ($var eq 'bar') {
#   ...
# } else {
#   ...
# }

# unless (condition) {
#   ...
# }

# while (condition) {

# }

# perl post-condition way:
# my $zippy = "Anna Rocks!";
# my $bananas;

# print "Yo!" if $zippy;
# print "We have no bananas" unless $bananas;

# # # for loops and itteration
# my $max = 5;

# for (my $i = 0; $i < $max; $i ++) {
#   print "index is $i";
# }

# my @elements = ('pingpong', 'frizbee', 'waterpolo');

# for (my $i = 0; $i < @elements; $i++) {
#   print "Current element is " . $elements[$i];
# }

# #another way to loop through an array

# for my $element (@elements) {
#   print $element;
# }

# # implicitly

# for (@elements) {
#   print;
# }

# the Perlish post-condition way again to do the above
# print for @elements;

# itterating though the keys and values of a referenced hash
# print $hash_ref -> {$_} for keys %$hash_ref;-------------------------??

### Regular Expressions
# lots of perl regular expressions. The main are:

# $a = "ana foo bot";
# $b = "foo foo foo foo foofoofoo";
# $_ = "footime";

# if ($a =~ /foo/) {
#   print "foo is contained";
# };

# if (/foo/) { 
#   print "Its here too!"
# }  # true if $_ contains "foo" -----------------------------??

# simple substitution

# $a =~ s/foo/bar/;
# print $a;

# $b =~ s/foo/bar/g;
# print $b;

###Files and I/0

#You can open a file for input or output using the "open()" function

#The die() function is used to quit your script and display a message for the user to read.

# my $filename = 'output.txt';
# # open(my $fh, '>', $filename) or die "Could not open file '$filename' $!";
# # open(my $fh, '>>', $filename) or die "Could not open file '$filename' $!";
# # print $fh "My first report generated by perl line two\n"; #can use say instead of print
# # close $fh; #strictly speaking not needed in perl as done automatically but noce to have
# # print "done\n";

# open(my $fh, '<:encoding(UTF-8)', $filename) or die "Could not open the file: $!";
# # my $row = <$fh>;
# while (my $row = <$fh>) {#loop through all the lines in the file and read them to the terminal
#   chomp $row; #removes trailing white space
#   print "$row\n";
# }

# # print "$row\n";
# print "done";

###Slup mode: read a file in one step





#You can read from an open filehandle using the "<>" operator.  In scalar
# context it reads a single line from the filehandle, and in list context it
# reads the whole file in, assigning each line to an element of the list:

# my $line  = <$in>;
# my @lines = <$in>;

# print @lines->[0];

### Subroutines

# A Perl subroutine or function is a group of statements that together performs a task.
#You can divide up your code into separate subroutines. How you divide up your code among 
#different subroutines is up to you, but logically the division usually is so each 
#function performs a specific task.

#create a txt file and write "We have a logger subroutine!" into it!

# sub logger {
#   # this is somehow the message put in
#   my $logmessage = shift;
#   # open a file my.log
#   open my $logfile, ">>", "my.log" or die "Could not open my.log: $!";
#   # print into the file the message!
#   print $logfile $logmessage;
# }

# logger("We have a logger subroutine!");

# my $name="jennifer";
# my $age=100;

# # my $list[0][0]="TEST NAME 2";
# # $list[0][1]="TEST GROUP 2";
# # $[0][2]=10;

# # $[1][0]="TEST NAME 2";
# # $[1][1]="TEST GROUP 2";
# # $[1][2]=2;

# sub mySubroutine
# {
#     # Get passed arguments
#     my ($name, $age, $refList) = @_;

#     # Get the array from the reference
#     my @list = @{$refList};
#     # Good to go
# }

# mySubroutine($name, $age, \@list);

my @sca = ('anna','rain','avocado');
# my $scal = @sca;#return the length of the array
# print scalar @sca;#also returns the length of the array





