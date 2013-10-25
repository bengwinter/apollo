 class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy, :add_favorite, :remove_favorite]

  def index
  end

  def show
  end

  def new
    @song = Song.new
    if params[:playlist_id].blank?
      @playlist = current_user.playlists.find_by_name("All")
    else
      @playlist = Playlist.find(playlist_id)
    end
  end

  def edit
  end

  def create
    @song = Song.where(add_song_params).first_or_create
    @playlist = Playlist.find(playlist_id)
    @playlist.songs << @song
    binding.pry

    respond_to do |format|
      if @song.save
        format.html { redirect_to playlist_path(playlist_id), notice: 'Song was successfully created.' }
        format.json { render action: 'show', status: :created, location: @song }
      else
        format.html { render action: 'new' }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @song.update(update_song_params)
        format.html { redirect_to playlist_path(params[:playlist_id]), notice: 'Song was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    Playlist.find(params[:playlist_id]).songs.find(params[:id]).orders.delete(params[:order_id])
    respond_to do |format|
      format.html { redirect_to playlist_path(params[:playlist_id]) }
      format.json { head :no_content }
    end
  end

  def add_favorite
    @song.favorite_add(params[:id])
    current_user.playlists.find_by_name("Favorites").songs << @song
    current_user.playlists.find_by_name("All").songs << @song
    redirect_to playlist_path(playlist_id)
  end

  def remove_favorite
    @song.favorite_remove(params[:id])
    current_user.playlists.find_by_name("Favorites").songs.delete(params[:id])
    redirect_to playlist_path(playlist_id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song
      @song = Song.find(params[:id])
      @playlist = Playlist.find(params[:playlist_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_song_params
      params.require(:song).permit(:url)
    end
    
    def playlist_id
      params.permit(:playlist_id)[:playlist_id]
    end

    def update_song_params
      params.require(:song).permit(:url, :title, :artist, :playlist_id, genre_ids: [])
    end
end
