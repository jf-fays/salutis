class MedicalProceduresController < ApplicationController


  def new
    @medical_procedure = MedicalProcedure.new
  end

  def create
    @medical_procedure = MedicalProcedure.new(params_medical_procedures)
    if @medical_procedure.save
      redirect_to root_path
    else
      render :new, :unprocessable_entity
    end
  end

  def update
  end

  private

  def params_medical_procedures
    params.require(:medical_procedures).permit(:content)
  end

end
