class SongsController < ApplicationController
  def new
    @song = Song.new
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def create
    @song = Song.new(song_params)

    if @song.save 
      redirect_to song_path(@song)
    else 
      render :new 
    end 
  end

  def update
    @song = Song.find(params[:id])
  end

  def index
    @songs = Song.all
  end

end
