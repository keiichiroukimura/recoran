# frozen_string_literal: true

class RemovePostId < ActiveRecord::Migration[5.2]
  def change
    remove_column :musics, :post_id, :integer
  end
end
