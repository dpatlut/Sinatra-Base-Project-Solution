#Controllers and the Classical MVC structure

1. make a config.ru file

2. Inside your controllers folder, add the three controllers we need:
apps_controller.rb , polls_controller.rb , users_controller.rb

	Here is base code for your apps_controller:

	//notice the capitilization for the name here
	class AppsController < Sinatra::Base

	  //any functionality we want for this controller only
	  get '/' do
	    "Order Index"
	  end

	end 

	Use the structure in the rest of your controllers.

3. Remove your old app.rb file, since we are going to use our config.ru to launch our app now.

4. #TODO Need a way to link the controllers and the views together. Right now controllers cant find the views folder becuase its using the controllers as a root directory

5. Now we can launch our new MVC app using rackup config.ru in our terminal