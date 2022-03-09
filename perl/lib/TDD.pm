#!/usr/bin/perl

package TDD;

use base 'Exporter';
our @EXPORT_OK = qw(extract);

$filename = "$ENV{HOME}/tdd/perl/file.txt";

sub extract {
    return "File doesn't exist" if (! -e $filename);
    
   open($fh, "<", $filename)
       or return "File not readable";

   while (<$fh>) {
       if ($_ =~ m/rock/) {
           chomp $_;
           close $fh;
           return $_;
       }
   }

   close $fh;
   return "Line not found";
}



1;
