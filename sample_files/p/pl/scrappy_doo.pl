#!/usr/bin/perl

use lib 'c:/repos/Scrappy/lib';
use Scrappy::Doo;

start 'http://blogs.perl.org/', {
    'a' => sub {
        if ($_[0]->{href} =~ 'http://blogs.perl.org') {
            queue $_[0]->{href};
        }
    },
    'body' => sub {
        print join "\n",
            grep { /[\w-]+(?:\.[\w-]+)*@(?:[\w-]+\.)+[a-zA-Z]{2,7}/ }
                split /\s/, shift->{text};
            
    }
};