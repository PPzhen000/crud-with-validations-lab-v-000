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

  end

  def update
    @song = Song.find(params[:id])
  end

  def index
    @songs = Song.all
  end

end
