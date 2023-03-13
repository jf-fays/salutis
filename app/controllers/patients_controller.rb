class PatientsController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]

  def index
    @patient = Patient.all
  end

  def show
    # find_user
    @consultations = @patient.consultations
        # if params[:consulation].present?
    @chatroom = Chatroom.find_by_patient_id(@patient.id)

  end

  def edit
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(params_patients)
    if @patient.save
      redirect_to patient_path(@patient)
    else
      render :show, status: :unprocessable_entity
    end
  end

  def update
    # find_user
    if @patient.update(params_patients)
      redirect_to patient_path(@patient)
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
    params.require(:patient).permit(
      :first_name, :last_name, :birthday, :social_security_number,
      :pathology, :height, :weight, :gender
    )
  end

  def find_user
    @patient = Patient.find(params[:id])
  end
end
