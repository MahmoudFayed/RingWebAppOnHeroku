load "weblib.ring"

import System.Web

func main
                mypage = new HtmlPage {
                        h1 { text("Customers Report") }
                        Table
                        {
                                style = stylewidth("100%") + stylegradient(4)
                                TR
                                {
                                        TD { WIDTH="10%"
                                                text("Customers Count : " )  }
                                        TD { text (100) }
                                }
                        }
                        Table
                        {
                                style = stylewidth("100%") + stylegradient(26)
                                TR
                                {
                                        style = stylewidth("100%") +
                                                stylegradient(24)
                                        TD { text("Name " )  }
                                        TD { text("Age" ) }
                                        TD { text("Country" ) }
                                        TD { text("Job" ) }
                                        TD { text("Company" ) }
                                }
                                for x =  1 to 100
                                        TR
                                        {
                                                TD { text("Test" )  }
                                                TD { text("30" ) }
                                                TD { text("Egypt" ) }
                                                TD { text("Sales" ) }
                                                TD { text("Future" ) }
                                        }
                                next
                        }
                }
            write("report.html",mypage.output())