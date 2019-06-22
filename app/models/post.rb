# frozen_string_literal: true

class Post < ApplicationRecord
  has_many :joins, dependent: :destroy
  has_many :musics, through: :joins, source: :music
  belongs_to :user
end
