#!/usr/bin/env perl
use strict;
use warnings;
use Time::HiRes qw(sleep);

$| = 1;

my $correct_answer = 0;

for (1 .. 10) {
    my $number = 1 + int(rand(9));

    print "\r$number\a";
    sleep 0.3;

    print "\r";
    sleep 0.2;

    $correct_answer += $number;
}

print "\rSum?\n";
my $answer = <>;
chomp $answer;

if ($answer == $correct_answer) {
    print "Correct\n";
}
else {
    print "$correct_answer\n";
}
