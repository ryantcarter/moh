class AddTitleToHikes < ActiveRecord::Migration[5.0]
  def change
    add_column :hikes, :title, :string
  end
end
