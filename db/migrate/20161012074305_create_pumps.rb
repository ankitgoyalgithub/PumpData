class CreatePumps < ActiveRecord::Migration[5.0]
  def change
    create_table :pumps do |t|

      t.timestamps
    end
  end
end
