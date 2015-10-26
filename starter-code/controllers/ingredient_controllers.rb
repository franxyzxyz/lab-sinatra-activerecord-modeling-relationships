class RecipeApp < Sinatra::Base
  get '/ingredient/' do
    @ingredients = Ingredient.all
    erb(:"ingredients/index")
  end

  get '/ingredient/add' do
    erb(:"ingredients/add")
  end

  get '/ingredient/view/:id' do
    @ingredient = Ingredient.find(params[:id])
    erb(:"ingredients/view")
  end

  post '/ingredient/add' do
    @ingredient = Ingredient.create(params[:ingredient])
    redirect("/ingredient/")
  end

  get '/ingredient/edit/:id' do
    @ingredient = Ingredient.find(params[:id])
    erb(:"ingredients/edit")
  end

  put '/ingredient/edit/:id' do
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update_attributes(params[:ingredient])
    redirect('/ingredient/')
  end

  delete '/ingredient/delete/:id' do
    Ingredient.delete(params[:id])
    redirect('/ingredient/')
  end

end