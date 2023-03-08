class PatientsController < ApplicationController
  before_action :find_user, only: %i[show: update: destroy:]
  def index
    @patient = Patient.all
  end

  def show
    # find_user
  end

  def create
    @patient = Patient.new(params_patients)
    if @patient.save
      redirect_to patients_path(@patient)
    else
      render :show, status: :unprocessable_entity
    end
  end

  def update
    # find_user
    if @patient.update(params_patients)
      redirect_to patients_path(@patient)
    else
      render :show, status: :unprocessable_entity
    end
  end

  def destroy
    # find_user
    @patient.destroy
    render :show
  end

  private

  def params_patients
    params.require(:patients).permit(
      :first_name, :last_name, :birthday, :social_security_number,
      :pathology, :medical_record, :height, :weight, :gender
    )
  end

  def find_user
    @patient = Patient.find(params[:id])
  end
end
