#!/usr/bin/perl

print "Content-type: text/html\n\n";
print "<font size=+1>Environment</font>";
print "<br />";

foreach (keys %ENV)
{
   print "<b>$_</b>: $ENV{$_}<br />";
}

print "<a href=\"./\">back</a> <br />";

1;
