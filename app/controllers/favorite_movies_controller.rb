class FavoriteMoviesController < ApplicationController
  def create
    @movie = Movie.find(params[:id])
    @movie.favorite = true
    @movie.save
    redirect_to movies_path, notice: 'Peli agregada a favoritos'
  end
end
