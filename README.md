Deploying Ring web application on Heroku (https://www.heroku.com/)

Demo : http://testring.herokuapp.com

# Ring Version

This project uses Ring 1.23 

# Heroku Stack

This project tested using Heroku-22 (Ubuntu 22.04)

# Usage

To use this project and deploy it on Heroku 

(1) Create Heroku account

(2) Open your Heroku account and create new application

Example : testring

Note (You have to select a unique name for your application)

(3) Open the command prompt, Create new folder : MyApp

	md MyApp

(4) Open the application folder

	cd MyApp	

(5) Clone this projet using Git (Don't forget the dot in the end to clone in the current directory)

	git clone https://github.com/ringpackages/RingWebAppOnHeroku .

(6) Login to Heroku (Enter your Email and Password)

	heroku login

(7) Add heroku (remote) to your Git project

change testring to your application name

	heroku git:remote -a testring

(8) Set the buildpacks (So Heroku can know how to support your project)

	heroku buildpacks:add --index 1 https://github.com/ringpackages/heroku-buildpack-apt
	heroku buildpacks:add --index 2 https://github.com/ringpackages/heroku-buildpack-ring

(9) Now build your project and deploy it 

	git push heroku master

(10) Test your project (In the browser)

	heroku open

# Ring source code files and permissions 

To be able to run your new Ring scripts, Set the permission of the file to be executable using Git 

For example, if you created a file : myscript.ring 

	git update-index --chmod=+x myscript.ring 
	git commit -m "Update file permission" 	

If you are using TortoiseGit, From windows explorer, select the file 

Right click ---> Properties ---> Git ---> Executable (+x)

Then commit and deploy!

# Hello World program 

file : ringapp/helloworld.ring 

To run it : http://testring.herokuapp.com/ringapp/helloworld.ring 

	#!/app/runring.sh -cgi

	see "content-type: text/html" +nl+nl	
	see "Hello, World!" + nl


file : ringapp/helloworld2.ring 

To run it : http://testring.herokuapp.com/ringapp/helloworld2.ring 

	#!/app/runring.sh -cgi
	load "weblib.ring"
	import System.Web
	new page {
		text("Hello, World!")
	}


# Database 

When you depoly the application, Everything will works directly!

No change is required, but in practice, You will need to update the next files to use your database 

There are two scripts to interact with the database (We are using PostgreSQL in the cloud) 

You will need to update the connection string in these files if you will use another database 

* file: ringapp/database/newdb.ring (We run it using the browser for one time to create the tables)
* file: ringapp/datalib.ring (Class: Database)

In your practical projects, You can write better code (To be able to change the database)

Also you can create configuration file (To write the connection string in one place)

Database service : https://www.heroku.com/postgres 

# Deploying after updates 

Just use Git and commit then push to heroku 

file: build.bat contains the next commands for quick tests 

	git add .
	git commit -m "Update RingWebAppOnHeroku"
	git push heroku master
	heroku open

# Local tests using Ring Notepad on Windows (Using local Apache Web Server) 

Replace the first line in the file : ringapp/index.ring with 

	#!ring -cgi 

Then run it from Ring Notepad (Ctrl+F6)



