# frozen_string_literal: true

class CreateJoins < ActiveRecord::Migration[5.2]
  def change
    create_table :joins do |t|
      t.references :post, foreign_key: true
      t.references :music, foreign_key: true

      t.timestamps
    end
  end
end
