class ConsultationsController < ApplicationController
  before_action :find_consultation, only: [:show]
  def show
  end
  def new
    @consultation = Consultation.new
    @patient = Patient.find(params[:patient_id])
  end
  def create
    @consultation = Consultation.new(params_consu)
    @consultation.user_id = current_user.id
    @consultation.patient_id = params[:patient_id]
    if @consultation.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  private
  def params_consu
    params.require(:consultation).permit(:content, :ald, :title, photos: [])
  end
  def find_consultation
    @consultation = Consultation.find(params[:id])
  end
end
