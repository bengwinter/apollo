class AutoListsController < ApplicationController

  def genre
    genre = params[:genre_name].capitalize
    @genre_playlist = Genre.where(name: genre).first
  end

end
