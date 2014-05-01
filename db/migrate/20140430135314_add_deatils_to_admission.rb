class AddDeatilsToAdmission < ActiveRecord::Migration
  def change
    add_column :admissions, :father_name, :string
    add_column :admissions, :mother_name, :string
    add_column :admissions, :father_occupation, :string
    add_column :admissions, :mother_occupation, :string
    add_column :admissions, :category, :string
    add_column :admissions, :house_address, :string
    add_column :admissions, :residence_number, :string
    add_column :admissions, :personal_number, :string
    add_column :admissions, :income_per_annum, :integer
  end
end
