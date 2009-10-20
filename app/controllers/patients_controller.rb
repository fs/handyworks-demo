class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end
  
  def new
    @patient = Patient.new
  end
  
  def create
    @patient = Patient.new(params[:patient])
    if @patient.save
      flash[:notice] = 'Successfully created a patient'
      redirect_to patients_path
    else
      render 'new'
    end
  end
  
  def edit
    @patient = Patient.find(params[:id])
  end
  
  def update
    @patient = Patient.find(params[:id])
    if @patient.update_attributes(params[:patient])
      flash[:notice] = 'Successfully updated a patient'
      redirect_to patients_path
    else
      render 'edit'
    end
  end
end
