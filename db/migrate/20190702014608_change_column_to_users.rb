class ChangeColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :provider, :string, default: "", null: false
    change_column :users, :uid, :string, default: "", null: false
  end
end
