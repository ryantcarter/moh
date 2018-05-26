class AddSlugToHikes < ActiveRecord::Migration[5.0]
  def change
    add_column :hikes, :slug, :string
    add_index :hikes, :slug, unique: true
  end
end
