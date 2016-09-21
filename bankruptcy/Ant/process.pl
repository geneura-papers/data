#!/usr/bin/env perl

use strict;
use warnings;

use v5.14;

use Text::CSV;
use File::Slurp::Tiny qw(read_file);

my $file_name = shift || "quiebras-spain-2005.csv";

open my $fh, $file_name or die "$file_name $!";

my $csv = Text::CSV->new ( { binary => 1 } );

my $row = $csv->getline( $fh ) ;
my $header = $row;
say join( ", ", @$header );
while ( $row = $csv->getline( $fh ) ) {
  my @new_row;
  for my $r ( @$row ) {
    $r =~ s/\.//g;
    $r =~ s/,/./g;
    push @new_row, $r;
  }
  say join(", ", @new_row);
}

