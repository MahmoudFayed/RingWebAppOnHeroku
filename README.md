Deploying Ring web application on Heroku (https://www.heroku.com/)

Demo : http://testring.herokuapp.com

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

	git clone https://github.com/MahmoudFayed/RingWebAppOnHeroku .

(6) Login to Heroku (Enter your Email and Password)

	heroku login

(7) Add heroku (remote) to your Git project

change testring to your application name

	heroku git:remote -a testring

(8) Set the buildpacks (So Heroku can know how to support your project)

	heroku buildpacks:add --index 1 https://github.com/MahmoudFayed/heroku-buildpack-apt
	heroku buildpacks:add --index 2 https://github.com/MahmoudFayed/heroku-buildpack-ring

(9) Now build your project and deploy it 

	git push heroku master

(10) Test your project (In the browser)

	heroku open


