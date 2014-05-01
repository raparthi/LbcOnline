class AdmissionsController < ApplicationController
  def create
    pp params
    admission = Admission.new
    admission.name = params[:admission][:name]
    if admission.save
      flash[:notice] = "new adminssion created"
      redirect_to admissions_path
    end
  end

  def index
    @admissions = Admission.all
  end
end
