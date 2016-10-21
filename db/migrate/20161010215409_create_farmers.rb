class CreateFarmers < ActiveRecord::Migration[5.0]
  def change
    create_table :farmers do |t|
      t.string :name
      t.references :user, foreign_key: true

      t.timestamps
    add_column :father_name , :string
  end
end
