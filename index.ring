#!/app/runring.sh -cgi

load "weblib.ring"

import System.Web

new Page
{
	script(scriptredirection("ringapp/index.ring"))  
}
