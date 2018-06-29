load "weblib.ring"
import System.Web

func Main

  BootStrapWebPage()
  {
        div
        {
          classname = :container
          div
          {
                classname = :jumbotron
                H1 {   text("Bootstrap Page")   }
          }
          div
          {
                classname = :row
                for x = 1 to 3
                  div
                  {
                        classname = "col-sm-4"
                        H3 { html("Welcome to the Ring programming language") }
                        P  { html("Using a scripting language is very fun!") }
                  }
                next
          }
        }
  }