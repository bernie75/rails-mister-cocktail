class AddAvatarToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :cocktails, :avatar, :string
  end
end
