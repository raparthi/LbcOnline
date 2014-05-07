class AddMoreDeatilsToAdmission < ActiveRecord::Migration
  def change
    add_column :admissions, :klass, :string
    add_column :admissions, :group, :string
    add_column :admissions, :section, :string
    add_column :admissions, :medium, :string
    add_column :admissions, :year_of_admission, :integer

    add_column :admissions, :qualifying_exam_passed, :string
    add_column :admissions, :name_of_last_attended_institution, :string
    add_column :admissions, :father_education, :string
    add_column :admissions, :mother_education, :string
    add_column :admissions, :brother_education, :string
    add_column :admissions, :sister_education, :string
    add_column :admissions, :scholar_type, :string
    add_column :admissions, :year_of_admission, :integer

  end
end
