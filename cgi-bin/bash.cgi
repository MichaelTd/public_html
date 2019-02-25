#!/bin/bash

declare -a evs=( CONTEXT_DOCUMENT_ROOT CONTEXT_PREFIX DOCUMENT_ROOT GATEWAY_INTERFACE HTTP_ACCEPT HTTP_ACCEPT_ENCODING HTTP_ACCEPT_LANGUAGE HTTP_CACHE_CONTROL HTTP_CONNECTION HTTP_COOKIE HTTP_HOST HTTP_UPGRADE_INSECURE_REQUESTS HTTP_USER_AGEND OLDPWD PATH PWD QUERY_STRING REMOTE_ADDR REMOTE_PORT REQUEST_METHOD REQUEST_SCHEME REQUEST_URI SCRIPT_FILENAME SCRIPT_NAME SERVER_ADDR SERVER_ADMIN SERVER_NAME SERVER_PORT SERVER_PROTOCOL SERVER_SIGNATURE SERVER_SOFTWARE SHLVL UNIQUE_ID )

printf "Content-Type: text/html; charset=utf-8\n\n"

printf "<html lang='en'>"

printf "<head><title>cgi env vars</title>
  <meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>
  <link rel='shortcut icon' href='../assets/favicon.ico'>
  <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
  <script defer src='https://use.fontawesome.com/releases/v5.6.3/js/all.js' integrity='sha384-EIHISlAOj4zgYieurP0SdoiBYfGJKkgWedPHH4jCzpCXLmzVsw1ouK59MuUtP4a1' crossorigin='anonymous'></script>
  <link href='../css/css.css' rel='stylesheet' type='text/css'>
  <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>
  <meta name='viewport' content='width=device-width, initial-scale=1.0'></head>"

printf "<body style='background-image: url(../assets/sepp-rutz-1310405-unsplash.jpg);'><div class='container-fluid'>"

printf "<h4>Environment variables</h4><hr/>"

printf "<div style='background-color:rgba(0,0,0,0.7);font-color:lightgrey;'>"

for i in ${evs[@]}; do
  printf "<small><b> %s </b> = %s </small><br/>" "${i}" "${!i}"
done

printf "</div>"

printf "<hr/><br/><a href="../">back</a></div>"

printf "<footer>
  <a href='https://twitter.com/tsouchlarakismd'><i class='fab fa-twitter fa-fw fa-1x'></i></a>
  <a href='https://github.com/michaeltd'><i class='fab fa-github fa-fw fa-1x'></i></a>
  <a href='https://dev.to/michaeltd'><i class='fab fa-dev' title='michaeltd DEV Profile'></i></a>
  <script type='text/javascript'>var year = new Date();document.write(year.getFullYear());</script>
  </footer></body></html>"
