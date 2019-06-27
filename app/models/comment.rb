# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates :content, presence: true, length: { maximum: 300 }
end
