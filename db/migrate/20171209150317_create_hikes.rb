class CreateHikes < ActiveRecord::Migration[5.0]
  def change
    create_table :hikes do |t|
      t.string :image
      t.string :time
      t.string :distance
      t.string :climb
      t.string :descent
      t.string :difficulty
      t.string :danger
      t.text   :description
      t.text   :one_point_advice
      t.text   :season
      t.string :topo_maps

      t.timestamps
    end
  end
end
