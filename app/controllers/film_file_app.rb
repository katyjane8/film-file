require_relative '../models/film.rb'

class FilmFile < Sinatra::Base
  get '/films' do
    @films = Film.all
    erb :"films/index"
  end

  get '/films/:id' do
    films = Film.find(params[:id])
    erb :"films/show", locals: {films: films}
  end


end
