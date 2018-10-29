#!/usr/bin/env perl

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

print "Content-type: text/html","\n\n";
print "<html>", "\n";
print "<head><title>List of Environment Variables</title></head>", "\n";
print "<body>", "\n";
print "<h4>", "CGI Environment Variables", "</h4>", "<hr>", "\n";
while ( ($env_var, $info) = each %list ) {
  print $info, "<b>", $ENV{$env_var}, "</b>", "<br/>","\n";
}
print "<hr>", "\n";
print "<a href=\"../\">back</a><br/>";
print "</body>", "</html>", "\n";

exit (0);
