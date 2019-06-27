class ChangeColumnToMusic < ActiveRecord::Migration[5.2]
  def change
    change_column :musics, :artist_name, :string, null: false
    change_column :musics, :track_name, :string, null: false
    change_column :musics, :album_name, :string, null: false
  end
end
