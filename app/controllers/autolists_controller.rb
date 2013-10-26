class AutolistController < ApplicationController

  def genre
    params.require(:song).permit(:genre_name)
    @genre_playlist = Genre.where(name: params[:genre_name]).first

  def recent_added
  end

  def recent_played
  end

  def top_played
  end

  def artist
  end

end