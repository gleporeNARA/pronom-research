#!/usr/bin/perl
#
# Example of parsing a response SOAP message for attachments.
#
# Author: Byrne Reese <byrne@majordojo.com>
#

use SOAP::Lite trace => 'debug';
use SOAP::MIME;

my $soap = SOAP::Lite
  ->readable(1)
  ->uri($NS)
  ->proxy($HOST);
my $som = $soap->foo();

foreach my $cid (keys %{$som->attachments}) {
  print "Attachment content-id: " . $cid . "\n";
  foreach my $foo (@{$som->attachments->{$cid}}) {
    print "  Array elem: $foo\n";
  }
}
