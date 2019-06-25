class RenameJoinsToTogethers < ActiveRecord::Migration[5.2]
  def change
    rename_table :joins, :togethers
  end
end
