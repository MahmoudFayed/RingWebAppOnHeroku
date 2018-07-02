#!/app/runring.sh -cgi

Load "weblib.ring"

Import System.Web

New Page
{
text("test")
//	script(scriptredirection("ringapp/index.ring"))  
}
