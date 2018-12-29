declare -a evs=( CONTEXT_DOCUMENT_ROOT CONTEXT_PREFIX DOCUMENT_ROOT GATEWAY_INTERFACE HTTP_ACCEPT HTTP_ACCEPT_ENCODING HTTP_ACCEPT_LANGUAGE HTTP_CACHE_CONTROL HTTP_CONNECTION HTTP_COOKIE HTTP_HOST HTTP_UPGRADE_INSECURE_REQUESTS HTTP_USER_AGEND OLDPWD PATH PWD QUERY_STRING REMOTE_ADDR REMOTE_PORT REQUEST_METHOD REQUEST_SCHEME REQUEST_URI SCRIPT_FILENAME SCRIPT_NAME SERVER_ADDR SERVER_ADMIN SERVER_NAME SERVER_PORT SERVER_PROTOCOL SERVER_SIGNATURE SERVER_SOFTWARE SHLVL UNIQUE_ID )

function print_headers {
  printf "Content-Type: text/html; charset=utf-8\n\n"
}

function print_head {
  printf "<head><title>${1}</title> 
          <meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>
          <link rel='shortcut icon' href='../assets/favicon.ico'>
          <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
          <link href='../css/css.css' rel='stylesheet' type='text/css'>
          <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>
          <script src='../js/js.js'></script>
          <meta name='viewport' content='width=device-width, initial-scale=1.0'></head>"
}

function print_footer {
  printf "<footer>
          <a href='https://plus.google.com/u/0/109449761845014157264'><i class='fa fa-google-plus fa-fw fa-1x'></i></a>
          <a href='https://www.linkedin.com/in/michael-tsouchlarakis/'><i class='fa fa-linkedin fa-fw fa-1x'></i></a>
          <a href='https://twitter.com/tsouchlarakismd'><i class='fa fa-twitter fa-fw fa-1x'></i></a>
          <a href='https://github.com/michaeltd'><i class='fa fa-github fa-fw fa-1x'></i></a>
          <a href='https://codepen.io/michaeltd/'><i class='fa fa-codepen fa-1x'></i></a>
          <a href='https://www.freecodecamp.com/michaeltd/'><i class='fa fa-free-code-camp fa-fw fa-1x'></i></a>
          <script type='text/javascript'>var year = new Date();document.write(year.getFullYear());</script>
          <a href='https://dev.to/michaeltd'><img src='https://d2fltix0v2e0sb.cloudfront.net/dev-badge.svg' alt=\"Michael DT's DEV Profile\" height='30' width='30' /></a>
          <script type='text/javascript'>var lm = new Date(document.lastModified);document.write('(Last Update: ' + lm.getFullYear() + '/' + (lm.getMonth()+1) + '/' + lm.getDate()+ ')');</script>
          </footer>"
}
