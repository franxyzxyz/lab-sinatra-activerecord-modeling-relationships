require 'rubygems'
require 'bundler'
Bundler.require

require "./models/course"
require "./models/ingredient"
require "./models/recipe"

require "./app"
require "./controllers/course_controllers"
require "./controllers/ingredient_controllers"
require "./controllers/recipe_controllers"

use Rack::MethodOverride
run RecipeApp