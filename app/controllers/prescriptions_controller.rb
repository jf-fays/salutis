class PrescriptionsController < ApplicationController
  before_action :find_prescription, only: [:show]

  def show
  end

  def new
    @consultation = Consultation.find(params[:consultation_id])
    @prescription = Prescription.create(consultation_id: @consultation.id, content: @prescription.content)
  end

  # def create
  #   @consultation = Consultation.find(params[:consultation_id])
  #   @prescription = Prescription.new(consultation_id: params[:consultation_id])
  #   if @prescription.save
  #     redirect_to prescription_path(@prescription)
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  private

  def find_prescription
    @prescription = Prescription.find(params[:id])
  end
end
