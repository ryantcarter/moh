class RemoveColumnsFromHikes < ActiveRecord::Migration[5.0]
  def change
    remove_column :hikes, :one_point_advice
    remove_column :hikes, :season
  end
end
