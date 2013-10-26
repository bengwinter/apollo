class AutoListsController < ApplicationController

  def genre
    # params.require(:genre).permit(:genre_name)
    binding.pry
    genre = params[:genre_name].capitalize
    @genre_playlist = Genre.where(name: genre).first
  end

end
