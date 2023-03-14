class PrescriptionsController < ApplicationController
  before_action :find_prescription, only: [:show]

  def show
    @medical_procedure = MedicalProcedure.new
    @prescription_medicine = PrescriptionMedicine.new
    # respond_to do |format|
    #   format.html { render :show }
    #   format.pdf {
    #     render :pdf => "show", :layout => 'pdf.html'
    #   }
      respond_to do |format|
        format.html
        format.pdf do
          render pdf: "Prescription n: #{@prescription.id}", template: "prescriptions/show.html.erb"   # Excluding ".pdf" extension.
        end
      end
  end

  def new
    @consultation = Consultation.find(params[:consultation_id])
    @prescription = Prescription.create(consultation_id: @consultation.id)
  end

  def create
    @consultation = Consultation.find(params[:consultation_id])
    @prescription = Prescription.new(consultation_id: params[:consultation_id])
    if @prescription.save
      redirect_to prescription_path(@prescription)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def find_prescription
    @prescription = Prescription.find(params[:id])
  end
end
