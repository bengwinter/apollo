class PlaylistsController < ApplicationController
  before_action :set_playlist, only: [:show, :edit, :update, :destroy]

  def index
  end

  # GET /songs/new
  def new
    @playlist = Playlist.new
  end

  # GET /songs/1
  def show
  end

  # GET /songs/1/edit
  def edit
  end

  def create
    
    @playlist = Playlist.new(playlist_params)

    respond_to do |format|
      if @playlist.save
        current_user.playlists << @playlist
        format.html { redirect_to playlist_path(@playlist.id), notice: 'Playlist was successfully created.' }
        format.json { render action: 'show', status: :created, location: @plalist }

      else
        format.html { render action: 'new' }
        format.json { render json: @playlist.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @playlist.update(playlist_params)
        format.html { redirect_to playlist_path(@playlist.id), notice: 'Playlist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @playlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /songs/1
  # DELETE /songs/1.json
  def destroy
    @playlist.destroy
    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playlist
      @playlist = Playlist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def playlist_params
      params.require(:playlist).permit(:name)
    end
end