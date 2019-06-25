class Together < ApplicationRecord
  belongs_to :post,optional: true
  belongs_to :music
end
