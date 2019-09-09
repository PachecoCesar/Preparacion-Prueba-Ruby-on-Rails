class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]
  def index
    @movies = Movie.all
  end

  def new; end

  def create
    @movie = Movie.create (movie_params)
    redirect_to movies_path
  end

  def show; end

  def edit; end

  def update
    @movie.update(movie_params)
    redirect_to movies_path
  end

  def destroy
    @movie.delete
    redirect_to movies_path
  end

  private
  def movie_params
     params.require(:movie).permit(:name, :year)
  end

  def set_movie
    @movie = Movie.find(params[:id])
  end

end
