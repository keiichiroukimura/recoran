# frozen_string_literal: true

class Music < ApplicationRecord
  has_many :joins, dependent: :destroy
end
