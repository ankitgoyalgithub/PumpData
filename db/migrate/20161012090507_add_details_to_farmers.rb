class AddDetailsToFarmers < ActiveRecord::Migration[5.0]
  def change
    add_column :farmers, :father_name, :string
    add_column :farmers, :address, :string
    add_column :farmers, :mobile_number, :string
    add_column :farmers, :landline, :string
    add_column :farmers, :latitude, :string
    add_column :farmers, :longitude, :string
  end
end
