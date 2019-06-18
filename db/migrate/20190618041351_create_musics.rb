# frozen_string_literal: true

class CreateMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :musics do |t|
      t.references :post, foreign_key: true
      t.string :track_name
      t.string :album_name
      t.string :artist_name
      t.string :release_date
      t.string :album_url
      t.string :track_url
      t.string :preview_url
      t.text :image
      t.string :album_key
      t.string :artist_key
      t.string :track_key

      t.timestamps
    end
  end
end
