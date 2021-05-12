#!/app/runring.sh -cgi

load "weblib.ring"
import System.Web
new Page
{
see ' '
	script(scriptredirection("ringapp/index.ring"))  
}
