# frozen_string_literal: true

class Post < ApplicationRecord
  has_many :togethers, dependent: :destroy
  has_many :musics, through: :togethers, source: :music
  has_many :comments, dependent: :destroy
  belongs_to :user

  validates :content, length: { maximum: 300 }

  scope :search_track, lambda { |artist_name|
    return if artist_name.blank?
    joins(:musics).where('artist_name like ?', "%#{artist_name}%")
  }
end
