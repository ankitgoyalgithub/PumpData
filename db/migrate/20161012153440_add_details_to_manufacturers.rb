class AddDetailsToManufacturers < ActiveRecord::Migration[5.0]
  def change
    add_column :manufacturers, :name, :string
    add_reference :manufacturers, :user, foreign_key: true
  end
end
