class AddDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :title, :text
  end
end
