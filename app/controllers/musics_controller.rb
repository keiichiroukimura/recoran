# frozen_string_literal: true

require 'rspotify'
RSpotify.authenticate(ENV['SPOTIFY_TOKEN'], ENV['SPOTIFY_SECRET_TOKEN'])

class MusicsController < ApplicationController
  def index
    @musics = RSpotify::Track.search(params[:search]) if params[:commit] == 'music'
  end

  def create
    @music = Music.new(music_params)
    if @music.save
      redirect_to new_post_path(id: @music.id)
    else
      render 'index'
    end
  end

  def destroy
    @music = Music.find(params[:id])
    @music.destroy
    flash[:danger] = '投稿を削除しました。'
    redirect_to musics_path
  end

  private

  def music_params
    params.permit(:id, :artist_name, :track_name, :album_name, :release_date, :preview_url, :album_url, :track_url, :image, :user_id)
  end
end
