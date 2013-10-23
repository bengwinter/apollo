class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  # GET /songs
  # GET /songs.json
  def index
  end

  def show
  end

  # GET /songs/new
  def new
    @song = Song.new
    if params[:playlist_id].blank?
      @playlist = current_user.playlists.find_by_name("All")
    else
      @playlist = Playlist.find(playlist_id)
    end
  end

  # GET /songs/1/edit
  def edit
  end

  # POST /songs
  # POST /songs.json
  def create
    @song = Song.new(add_song_params)
    Playlist.find(playlist_id).songs << @song

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

  # PATCH/PUT /songs/1
  # PATCH/PUT /songs/1.json
  def update
    respond_to do |format|
      if @song.update(update_song_params)
        format.html { redirect_to @song, notice: 'Song was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /songs/1
  # DELETE /songs/1.json
  def destroy
    @song.destroy
    respond_to do |format|
      format.html { redirect_to songs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song
      @song = Song.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_song_params
      params.require(:song).permit(:url)
    end
    
    def playlist_id
      params.permit(:playlist_id)[:playlist_id]
    end

    def update_song_params
      params.require(:song).permit(:url, :title, :artist, :genre, :playlist_id)
    end
end
