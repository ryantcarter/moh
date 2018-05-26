class CreateMountains < ActiveRecord::Migration[5.0]
  def change
    create_table :mountains do |t|

      t.timestamps
    end
  end
end
