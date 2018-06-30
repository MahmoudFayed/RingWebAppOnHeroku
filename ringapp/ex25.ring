#!/app/ring/bin/ringlang -cgi

Load "weblib.ring"
Load "datalib.ring"
Load "ex25_users.ring"

Import System.Web

website = "ex25.ring"

New UsersController { Routing() }
