class CreateSoilHealths < ActiveRecord::Migration[5.0]
  def change
    create_table :soil_healths do |t|

      t.timestamps
    end
  end
end
