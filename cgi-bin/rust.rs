fn main() {
    let _envs = vec![
        "CONTEXT_DOCUMENT_ROOT",
        "CONTEXT_PREFIX",
        "DOCUMENT_ROOT",
        "GATEWAY_INTERFACE",
        "HTTP_ACCEPT",
        "HTTP_ACCEPT_ENCODING",
        "HTTP_ACCEPT_LANGUAGE",
        "HTTP_CACHE_CONTROL",
        "HTTP_CONNECTION",
        "HTTP_COOKIE",
        "HTTP_HOST",
        "HTTP_UPGRADE_INSECURE_REQUESTS",
        "HTTP_USER_AGEND",
        "OLDPW",
        "DPATH",
        "PWD",
        "QUERY_STRING",
        "REMOTE_ADDR",
        "REMOTE_PORT",
        "REQUEST_METHOD",
        "REQUEST_SCHEME",
        "REQUEST_URI",
        "SCRIPT_FILENAME",
        "SCRIPT_NAME",
        "SERVER_ADDR",
        "SERVER_ADMIN",
        "SERVER_NAME",
        "SERVER_PORT",
        "SERVER_PROTOCOL",
        "SERVER_SIGNATURE",
        "SERVER_SOFTWARE",
        "SHLVL",
        "UNIQUE_ID",
    ];

    println!("Content-Type: text/html; charset=utf-8\n\n");

    println!("<html lang='en'>");

    println!("<head><title>cgi env vars</title>
        <meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>
        <link rel='shortcut icon' href='../assets/favicon.ico'>
        <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
        <script defer src='https://use.fontawesome.com/releases/v5.6.3/js/all.js' integrity='sha384-EIHISlAOj4zgYieurP0SdoiBYfGJKkgWedPHH4jCzpCXLmzVsw1ouK59MuUtP4a1' crossorigin='anonymous'></script>
        <link href='../css/css.css' rel='stylesheet' type='text/css'>
        <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>
        <meta name='viewport' content='width=device-width, initial-scale=1.0'></head>");

    println!("<body style='background-image: url(../assets/sepp-rutz-1310405-unsplash.jpg);'><div class='container-fluid'>");

    println!("<h4>Environment variables</h4><hr/>");

    /* for i in ${evs[@]}; do
        println!("<small><b> %s </b> = %s </small>" "${i}" "${!i}");
    done */

    println!("<hr/><br/><a href='../'>back</a></div>");

    println!("<footer>
        <a href='https://twitter.com/tsouchlarakismd'><i class='fab fa-twitter fa-fw fa-1x'></i></a>
        <a href='https://github.com/michaeltd'><i class='fab fa-github fa-fw fa-1x'></i></a>
        <a href='https://dev.to/michaeltd'><i class='fab fa-dev' title='michaeltd DEV Profile'></i></a>
        <script type='text/javascript'>var year = new Date();document.write(year.getFullYear());</script>
        </footer>");

    println!("</body></html>");
}
