#!/app/runring.sh -cgi

Load "weblib.ring"

Import System.Web

website = "index.ring"

Func Main
 		
		if aPageVars["page"] = NULL
			mainpage()	
		else
			switch aPageVars["page"] 
			on 1
				runcode() 	
			other
				errormsg("Invalid Link!")
			off
		ok

Func MainPage

	BootStrapWebPage() 
	{
		Title = "The Ring Programming Language"
		div {
			classname = :container
			div
			{
				id = "div3"
				color = "black"
				backgroundcolor = "white"
				width = "100%"
				form
				{
					method = "POST"
					Action = website  
					Target = "codeoutput"
					input { type="hidden" name="page" value=1 }
					Table
					{ 
						style = stylewidth("100%") + stylegradient(3)			
						TR
						{
					
							TD { align="center" WIDTH="10%" text("Code :") }
							TD {
								html(`<textarea name  = "cCode" rows="5" style="width : 100%; ">See "Hello, World!" + nl</textarea>`)
							}
						}
					}
					Input { type = "submit" classname="btn btn-primary btn-block" value = "Execute" }
					Table
					{ 
						style = stylewidth("100%") + stylegradient(34)			
						TR
						{
					
							TD { align="center" WIDTH="10%" text("Output :") }
							TD {
								html(`<iframe name="codeoutput" width="100%" style="background-color:white;"></iframe>`)
							}
						}
					}

				}
			}

		}
	}

Func RunCode			

	BootStrapWebPage() 
	{
		Title = "Program Output"		
	}
	cCode = aPageVars["cCode"]
	cCode = substr(cCode,"+ nl"," see '<br/>'")
	cCode = substr(cCode,"+nl"," see '<br/>'")
	eval(cCode)