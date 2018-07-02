#!ring -cgi

# We use this file when we run from our local machine using Ring Notepad (Microsoft Windows)

load "weblib.ring"
import System.Web
new Page
{
	script(scriptredirection("ringapp/index.ring"))  
}
