#!/usr/bin/python

import sys, os

print("Content-Type: text/html;charset=utf-8\n\n")

print("<h1>" + os.name + "</h1>")

print("<h1>" + sys.argv[0] + " says ... Hello CGI!</h1>")

print("<h1><a href=\"./\">back</a></h1>")
