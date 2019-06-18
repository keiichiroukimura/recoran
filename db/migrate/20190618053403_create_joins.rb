# frozen_string_literal: true

class CreateJoins < ActiveRecord::Migration[5.2]
  def change
    create_table :joins do |t|
      t.integer :post_id
      t.integer :music_id

      t.timestamps
    end
  end
end
