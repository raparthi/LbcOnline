class CreateAdmissions < ActiveRecord::Migration
  def change
    create_table :admissions do |t|
      t.string :name
      t.date :dob

      t.timestamps
    end
  end
end
