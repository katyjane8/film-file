class FilmFile < Sinatra::Base
  get "/films" do
    @films = Film.all
    erb :"films/index"
  end

  get "/films/new" do
    erb :"films/new"
  end

  post '/films' do
    films = Film.new(params[:film])
    films.save
    
    redirect '/films'
  end
end
