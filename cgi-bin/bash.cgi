#!/bin/bash

source cgi_lib.sh

print_headers

printf "<html lang='en'>"

print_head 'cgi env vars'

printf "<body><div class='container-fluid'>"

printf "<h4>Environment variables</h4><hr/>"

for i in ${evs[@]}; do
  printf "<small><b> %s </b> = %s </small>" "${i}" "${!i}"
done

printf "<hr/><br/><a href="../">back</a></div>"

print_footer

printf "</body></html>"
