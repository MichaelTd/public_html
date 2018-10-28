#!/usr/bin/env bash

evs=( CONTEXT_DOCUMENT_ROOT CONTEXT_PREFIX DOCUMENT_ROOT GATEWAY_INTERFACE HTTP_ACCEPT HTTP_ACCEPT_ENCODING HTTP_ACCEPT_LANGUAGE HTTP_CACHE_CONTROL HTTP_CONNECTION HTTP_COOKIE HTTP_HOST HTTP_UPGRADE_INSECURE_REQUESTS HTTP_USER_AGEND OLDPWD PATH PWD QUERY_STRING REMOTE_ADDR REMOTE_PORT REQUEST_METHOD REQUEST_SCHEME REQUEST_URI SCRIPT_FILENAME SCRIPT_NAME SERVER_ADDR SERVER_ADMIN SERVER_NAME SERVER_PORT SERVER_PROTOCOL SERVER_SIGNATURE SERVER_SOFTWARE SHLVL UNIQUE_ID )

printf "Content-Type: text/html; charset=utf-8\n\n"

printf "<html lang='en'>"

cat ../head.html

printf "<body><div class='container-fluid'><hr/><h4>Bash CGI script</h4><hr/>"

printf "<h6><b>%s says : </b>Hello CGI! <b> \
  UNIX Epoch is : </b> %s <b> \
  Date is : </b> %s <b> \
  The System is : </b> %s</h6><hr/>" "$(basename ${BASH_SOURCE[0]})" "$(date +%s)" "$(date +%Y/%m/%d\ %H:%M:%S)" "$(uname -snrp)"

printf "<h4>Environment variables</h4><hr/>"

for i in ${evs[@]}; do
  printf "<small><b> %s </b> = %s </small>" "${i}" "${!i}"
done

printf "<hr/><br/><a href="../">back</a></div>"

cat ../foot.html

printf "</body></html>"
