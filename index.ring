#!/app/ring/bin/ringlang -cgi

Load "weblib.ring"

Import System.Web

New Page
{
	script(scriptredirection("ringapp/index.ring"))  
}
