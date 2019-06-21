class Join < ApplicationRecord
  belongs_to :post,optional: true
  belongs_to :music
end
