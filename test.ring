#!/app/runring.sh -cgi

load "weblib.ring"
import System.Web
new Page
{
	text("Just a test!")
	text("Another line!")
}
