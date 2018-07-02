Deploying Ring web application on Heroku (https://www.heroku.com/)

Demo : http://testring.herokuapp.com

# Usage

To use this project and deploy it on Heroku 

(1) Create Heroku account

(2) Open your Heroku account and create new application

Example : testring

Note (You have to select a unique name for your application)

(3) Open the command prompt, Create new folder : MyApp

(4) Open the application folder

	cd MyApp	

(5) Enter the next commands (change testring to your application name)

	git clone https://github.com/MahmoudFayed/RingWebAppOnHeroku .

	heroku login

	heroku git:remote -a testring

	heroku buildpacks:add --index 1 https://github.com/MahmoudFayed/heroku-buildpack-apt
	heroku buildpacks:add --index 2 https://github.com/MahmoudFayed/heroku-buildpack-ring

	git push heroku master

	heroku open


