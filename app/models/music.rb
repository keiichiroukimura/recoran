# frozen_string_literal: true

class Music < ApplicationRecord
  has_many :togethers, dependent: :destroy
  has_many :posts, through: :togethers, source: :post
  validates :artist_name, presence: true
  validates :track_name, presence: true
  validates :album_name, presence: true
end
