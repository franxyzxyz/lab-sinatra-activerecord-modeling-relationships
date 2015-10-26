class RecipeApp < Sinatra::Base
  get '/course/' do
    @courses = Course.all
    erb(:"courses/index")
  end

  get '/course/add' do
    erb(:"courses/add")
  end

  get '/course/view/:id' do
    @course = Course.find(params[:id])
    erb(:"courses/view")
  end
  post '/course/add' do
    @course = Course.create(params[:course])
    redirect("/course/")
  end

  get '/course/edit/:id' do
    @course = Course.find(params[:id])
    erb(:"Courses/edit")
  end

  put '/course/edit/:id' do
    @course = Course.find(params[:id])
    @course.update_attributes(params[:course])
    redirect('/course/')
  end

  delete '/course/delete/:id' do
    Course.delete(params[:id])
    redirect('/course/')
  end
end