declare -a evs=( CONTEXT_DOCUMENT_ROOT CONTEXT_PREFIX DOCUMENT_ROOT GATEWAY_INTERFACE HTTP_ACCEPT HTTP_ACCEPT_ENCODING HTTP_ACCEPT_LANGUAGE HTTP_CACHE_CONTROL HTTP_CONNECTION HTTP_COOKIE HTTP_HOST HTTP_UPGRADE_INSECURE_REQUESTS HTTP_USER_AGEND OLDPWD PATH PWD QUERY_STRING REMOTE_ADDR REMOTE_PORT REQUEST_METHOD REQUEST_SCHEME REQUEST_URI SCRIPT_FILENAME SCRIPT_NAME SERVER_ADDR SERVER_ADMIN SERVER_NAME SERVER_PORT SERVER_PROTOCOL SERVER_SIGNATURE SERVER_SOFTWARE SHLVL UNIQUE_ID )

function print_headers {
  printf "Content-Type: text/html; charset=utf-8\n\n"
}

function print_head {
  printf "<head><title>${1}</title>"
  printf "<meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>"
  printf "<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>"
  printf "<link href='../css/css.css' rel='stylesheet' type='text/css'>"
  printf "<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>"
  printf "<script src='../js/js.js'></script>"
  printf "<meta name='viewport' content='width=device-width, initial-scale=1.0'></head>"
}

function print_footer {
  printf "<footer><p><a href='https://plus.google.com/u/0/109449761845014157264'><i class='fa fa-google-plus fa-fw fa-1x'></i></a>"
  printf "<a href='http://www.facebook.com/michael.tsouchlarakis'><i class='fa fa-facebook fa-fw fa-1x'></i></a>"
  printf "<a href='https://github.com/MichaelTd'><i class='fa fa-github fa-fw fa-1x'></i></a>"
  printf "<a href='https://www.linkedin.com/in/michael-tsouchlarakis/'><i class='fa fa-linkedin fa-fw fa-1x'></i></a>"
  printf "<a href='https://twitter.com/tsouchlarakis'><i class='fa fa-twitter fa-fw fa-1x'></i></a>"
  printf "<a href='http://codepen.io/TdMichael/'><i class='fa fa-codepen fa-1x'></i></a>"
  printf "<a href='https://www.freecodecamp.com/michaeltd/'><i class='fa fa-free-code-camp fa-fw fa-1x'></i></a>"
  printf "<a href='mailto:tsouchlarakis@gmail.com'><i class='fa fa-envelope fa-fw fa-1x'></i></a>"
  printf "<a href='https://www.minds.com/michaeltsouchlarakis'>TDM</a>"
  printf "<script type='text/javascript'>var year = new Date();document.write(year.getFullYear());</script></p></footer>"
}
