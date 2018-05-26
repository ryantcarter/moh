class AddDetailsToMountain < ActiveRecord::Migration[5.0]
  def change
    add_column :mountains, :english_name, :string
    add_column :mountains, :japanese_name, :string
    add_column :mountains, :altitude, :string
  end
end
