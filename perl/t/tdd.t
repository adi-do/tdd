#!/usr/bin/perl

use lib "/Users/adrian/tdd/perl/lib";
use TDD qw(extract);
use Test::More tests => 4;

$filename = "$ENV{HOME}/tdd/perl/file.txt";

{
   chmod 0640, $filename;
   open($fhndl, ">", $filename);
   print $fhndl <<'EOF';
Testing rules!
Testing rocks!
Testing is fun!
EOF

   close $fhndl;

   $got = extract();
   $expected = "Testing rocks!";
   is($got, $expected, "Expected line was found");
};


{
   chmod 0640, $filename;
   open($fhndl, ">", $filename);
   print $fhndl <<'EOF';
Testing sucks
Testing is a nightmare
Testing is scarry
EOF
   close $fhndl;
   $got = extract();
   $expected = "Line not found";
   is($got, $expected, "Expected line was not found");
};

{
   chmod 0640, $filename;
   open($sfhndl, ">", $filename);
   print $fhndl "Testing rocks!";
   close $fhndl;
   chmod 0000, $filename;
  
   $got = extract();
   $expected = "File not readable";

   is($got, $expected, "File is not readable");
};

{
   unlink $filename;

   $got = extract();
   $expected = "File doesn't exist";

   is($got, $expected, "Missing file");
};
