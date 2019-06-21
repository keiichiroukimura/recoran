# frozen_string_literal: true

class Post < ApplicationRecord
  has_many :joins, dependent: :destroy
  has_many :tracks, through: :joins, source: :music
end
