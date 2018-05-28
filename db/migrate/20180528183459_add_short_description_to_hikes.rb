class AddShortDescriptionToHikes < ActiveRecord::Migration[5.0]
  def change
    add_column :hikes, :short_description, :text
  end
end
