class MedicalProceduresController < ApplicationController


  def new
    @medical_procedure = MedicalProcedure.new
    @prescription_medicine = PrescriptionMedicine.new
  end

  def create
    @medical_procedure = MedicalProcedure.new(params_medical_procedures)
    @medical_procedure.prescription_id = params[:prescription_id]
    if @medical_procedure.save
      redirect_to prescription_path(params[:prescription_id])
    else
      redirect_to prescription_path(params[:prescription_id]), status: :unprocessable_entity
    end
  end

  def update
  end

  private

  def params_medical_procedures
    params.require(:medical_procedure).permit(:content)
  end

end
