#! perl

$count=1;

open(IN, "0001.ppm") || die;
binmode(IN);

while(<IN>) {
  print "count==$count\n";
  chop;
  die "not suppported file" if !/^P6/;

  open(OUT, sprintf(">image%04d.ppm",$count++)) || die;
  binmode(OUT);

  while(<IN>) {
    last if !/^#/;
  }

  /^(\d+) (\d+)$/ || die "format error $_";

  $x=$1;
  $y=$2;

  $_=<IN>;
  /^(\d+)$/ || die "format error $_";
  $depth=$1;

  print OUT "P6\n$x $y\n$depth\n";
  read(IN, $data, $x*$y*3);
  print OUT $data;
  close OUT;
}
close IN;

