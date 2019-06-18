# frozen_string_literal: true

class Post < ApplicationRecord
  has_many :joins, dependent: :destroy
end
