#!/usr/bin/perl -w

use strict;

my $i    = 1;
my $line = "";
my $id   = "";

print $i++ . "  READ (all)\n";
open COMMAND, "curl --silent http://localhost:8080/api |";
while ($line = <COMMAND>) {
    chomp($line);
    print "$line\n";
}
print "\n";
close COMMAND;

print $i++ . "  CREATE\n";
open COMMAND, "curl --silent --include --header \"Content-Type: application/json\" --data '{\"value\":\"Java 1\"}' http://localhost:8080/api |";
while ($line = <COMMAND>) {
    if ($line =~ m/^Location: http:\/\/localhost:8080\/api\/([0-9a-f]+)/i) {
        $id = $1;
    }
    chomp($line);
    print "$line\n";
}
print "\n";
close COMMAND;

print "-----------------------------------------------------\n";
print "|  _id of new document is $id  |\n";
print "-----------------------------------------------------\n\n";

print $i++ . "  READ (all)\n";
open COMMAND, "curl --silent http://localhost:8080/api |";
while ($line = <COMMAND>) {
    chomp($line);
    print "$line\n";
}
print "\n";
close COMMAND;

print $i++ . "  READ (one)\n";
open COMMAND, "curl --silent http://localhost:8080/api/$id |";
while ($line = <COMMAND>) {
    chomp($line);
    print "$line\n";
}
print "\n";
close COMMAND;

print $i++ . "  UPDATE\n";
open COMMAND, "curl --silent --request PUT --header \"Content-Type: application/json\" --data '{\"value\":\"Java 2\"}' http://localhost:8080/api/$id |";
while ($line = <COMMAND>) {
    chomp($line);
    print "$line\n";
}
print "\n";
close COMMAND;

print $i++ . "  READ (one)\n";
open COMMAND, "curl --silent http://localhost:8080/api/$id |";
while ($line = <COMMAND>) {
    chomp($line);
    print "$line\n";
}
print "\n";
close COMMAND;

print $i++ . "  DELETE\n";
open COMMAND, "curl --silent --include --request DELETE http://localhost:8080/api/$id |";
while ($line = <COMMAND>) {
    chomp($line);
    print "$line\n";
}
print "\n";
close COMMAND;

print $i++ . "  READ (all)\n";
open COMMAND, "curl --silent http://localhost:8080/api |";
while ($line = <COMMAND>) {
    chomp($line);
    print "$line\n";
}
print "\n";
close COMMAND;

