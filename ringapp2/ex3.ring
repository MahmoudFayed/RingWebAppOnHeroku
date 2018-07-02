#!/app/ring/bin/ringlang -cgi

Load "weblib.ring"

Import System.Web

WebPage()
{
        Text("Hello World!")
}
