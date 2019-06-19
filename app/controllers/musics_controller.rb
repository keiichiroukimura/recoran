# frozen_string_literal: true
require 'rspotify'
RSpotify.authenticate(ENV["SPOTIFY_TOKEN"], ENV["SPOTIFY_SECRET_TOKEN"])

class MusicsController < ApplicationController
  def index
    @musics = RSpotify::Track.search(params[:search]) if params[:commit] == "music"
  end
  def create
    @music = Music.new(music_params)
      if @music.save
          redirect_to new_post_path
      else
        render 'index'
      end
  end
  private
    
  def set_music
    @music = Music.find(params[:id])
  end
    
  def music_params
    params.require(:music).permit(:id, :track_name, :user_id, :image, :artist, :music_url)
  end
end
