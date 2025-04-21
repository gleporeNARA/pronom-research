#!/usr/local/bin/perl
use DBMS;
use Fcntl; 
	$f=1;
$SIG{PIPE} = 'IGNORE'; # sub { warn "spooler pipe broke" if $f; $f=0; print "*"; };

$|=1;
$X = tie %een, 'DBMS','een',O_RDWR|O_CREAT or die $!;

while(1) {
   for $i ( 1..100) {
	$een{ $i } = time;
	};
   sleep(1);
   print "^ "; $c=0;
   for $i ( 1..100) {
	$oink = $een{ $i };
	$c+= $oink;
	};
    print ".$c ";
   sleep(1);
    };

		
	
