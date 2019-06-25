# frozen_string_literal: true

class Music < ApplicationRecord
  has_many :togethers, dependent: :destroy
  has_many :posts, through: :togethers, source: :post
end
