class AddInformationToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :date_birth, :string
    add_column :users, :goal, :string
    add_column :users, :phone_number, :string
    add_column :users, :location, :string
    add_column :users, :CURP, :string
    add_column :users, :cedula_profesional, :string
    add_column :users, :studies, :string
    add_column :users, :profession, :string
    add_column :users, :role, :string
  end
end
