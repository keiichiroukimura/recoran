# frozen_string_literal: true

class Join < ApplicationRecord
  belongs_to :post
  belongs_to :music
end
