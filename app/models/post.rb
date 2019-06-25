# frozen_string_literal: true

class Post < ApplicationRecord
  has_many :togethers, dependent: :destroy
  has_many :musics, through: :togethers, source: :music
  has_many :comments, dependent: :destroy
  #has_many :users, through: :comments, source: :user
  belongs_to :user
  scope :search_track, -> (artist_name) {
      #return if track_name.blank?
    joins(:musics).where("artist_name like ?","%#{artist_name}%")
  }
end
