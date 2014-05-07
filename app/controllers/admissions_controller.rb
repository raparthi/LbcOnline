class AdmissionsController < ApplicationController

  def create
    pp params
    admission = Admission.new
    admission.name = params[:admission][:name]
    admission.dob = params[:admission][:dob]
    admission.father_name = params[:admission][:father_name]
    admission.mother_name = params[:admission][:mother_name]
    admission.father_occupation = params[:admission][:father_occupation]
    admission.mother_occupation = params[:admission][:mother_occupation]
    admission.category = params[:admission][:category]
    admission.house_address = params[:admission][:house_address]
    admission.residence_number = params[:admission][:residence_number]
    admission.personal_number = params[:admission][:personal_number]
    admission.income_per_annum = params[:admission][:income_per_annum]
    admission.klass = params[:admission][:klass]
    admission.group = params[:admission][:group]
    admission.section = params[:admission][:section]
    admission.medium = params[:admission][:medium]

    if admission.save
      flash[:notice] = "new adminssion created"
      redirect_to admissions_path
    else
      flash[:notice] = "unable adminssion create admission"
      render 'admissions/new'
    end
  end

  def index
    @admissions = Admission.all
  end
end
