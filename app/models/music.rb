# frozen_string_literal: true

class Music < ApplicationRecord
  has_many :joins, dependent: :destroy
  has_many :posts, through: :joins, source: :post
end
