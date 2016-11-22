class Renamecolumnavatar < ActiveRecord::Migration[5.0]
  def change
    rename_column :cocktails, :avatar, :photo
  end
end
