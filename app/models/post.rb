# frozen_string_literal: true

class Post < ApplicationRecord
  has_many :joins, dependent: :destroy
  has_many :musics, through: :joins, source: :music
  has_many :comments, dependent: :destroy
  #has_many :users, through: :comments, source: :user
  belongs_to :user
end
