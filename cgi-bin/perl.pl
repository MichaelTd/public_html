#!/usr/bin/perl

# declare -a evs=( CONTEXT_
#                  DOCUMENT_ROOT
#                  CONTEXT_PREFIX
#                  DOCUMENT_ROOT
#                  GATEWAY_INTERFACE
#                  HTTP_ACCEPT
#                  HTTP_ACCEPT_ENCODING
#                  HTTP_ACCEPT_LANGUAGE
#                  HTTP_CACHE_CONTROL
#                  HTTP_CONNECTION
#                  HTTP_COOKIE
#                  HTTP_HOST
#                  HTTP_UPGRADE_INSECURE_REQUESTS
#                  HTTP_USER_AGEND
#                  OLDPWD
#                  PATH
#                  PWD
#                  QUERY_STRING
#                  REMOTE_ADDR
#                  REMOTE_PORT
#                  REQUEST_METHOD
#                  REQUEST_SCHEME
#                  REQUEST_URI
#                  SCRIPT_FILENAME
#                  SCRIPT_NAME
#                  SERVER_ADDR
#                  SERVER_ADMIN
#                  SERVER_NAME
#                  SERVER_PORT
#                  SERVER_PROTOCOL
#                  SERVER_SIGNATURE
#                  SERVER_SOFTWARE
#                  SHLVL
#                  UNIQUE_ID )

%list = ('SERVER_SOFTWARE',   'The server software is: ',
         'SERVER_NAME',       'The server hostname, DNS alias, or IP address is: ',
         'GATEWAY_INTERFACE', 'The CGI specification revision is: ',
         'SERVER_PROTOCOL',   'The name and revision of info protocol is: ',
         'SERVER_PORT',       'The port number for the server is: ',
         'REQUEST_METHOD',    'The info request method is: ',
         'PATH_INFO',         'The extra path info is: ',
         'PATH_TRANSLATED',   'The translated PATH_INFO is: ',
         'DOCUMENT_ROOT',     'The server document root directory is: ',
         'SCRIPT_NAME',       'The script name is: ',
         'QUERY_STRING',      'The query string is (FORM GET): ',
         'REMOTE_HOST',       'The hostname making the request is: ',
         'REMOTE_ADDR',       'The IP address of the remote host is: ',
         'AUTH_TYPE',         'The authentication method is: ',
         'REMOTE_USER',       'The authenticated user is: ',
         'REMOTE_IDENT',      'The remote user is (RFC 931): ',
         'CONTENT_TYPE',      'The content type of the data is (POST, PUT): ',
         'CONTENT_LENGTH',    'The length of the content is: ',
         'HTTP_ACCEPT',       'The MIME types that the client will accept are: ',
         'HTTP_USER_AGENT',   'The browser of the client is: ',
         'HTTP_REFERER',      'The URL of the referer is: ');

#foreach (keys %ENV) {
#  print "$_ : $ENV{$_}<br />";
#}

print "Content-type: text/html; charset=utf-8","\n\n";

print "<html lang='en'>", "\n";
print "<head><title>perl cgi env vars</title>", "\n\n";
print "<meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>";
print " <link rel='shortcut icon' href='../assets/favicon.ico'>";
print " <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>";
print " <script defer src='https://use.fontawesome.com/releases/v5.6.3/js/all.js' integrity='sha384-EIHISlAOj4zgYieurP0SdoiBYfGJKkgWedPHH4jCzpCXLmzVsw1ouK59MuUtP4a1' crossorigin='anonymous'></script>";
print " <link href='../css/css.css' rel='stylesheet' type='text/css'>";
print " <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>";
print " <meta name='viewport' content='width=device-width, initial-scale=1.0'></head>";

print "<body><div class='container-fluid'>";
print " <h4>Environment variables</h4><hr/>";
print " <div style='background-color:rgba(0,0,0,0.7);font-color:lightgrey;'>";

while ( ($env_var, $info) = each %list ) {
  print " <small><b>", $info, " ", $env_var, " = ", "</b> ", $ENV{$env_var}, "</small>", "<br/>","\n";
}

print " </div>";
print " <hr/><br/><a href='../'>back</a></div>";

print "<footer>";
print " <a href='https://twitter.com/tsouchlarakismd'><i class='fab fa-twitter fa-fw fa-1x'></i></a>";
print " <a href='https://github.com/michaeltd'><i class='fab fa-github fa-fw fa-1x'></i></a>";
print " <a href='https://dev.to/michaeltd'><i class='fab fa-dev' title='michaeltd DEV Profile'></i></a>";
print " <script type='text/javascript'>var year = new Date();document.write(year.getFullYear());</script>";
print "</footer><script src='../js/noise.js'></script></body></html>";

exit (0);
