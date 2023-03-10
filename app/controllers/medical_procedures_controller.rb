class MedicalProceduresController < ApplicationController
  def new
    @medical_procedure = MedicalProcedure.new
  end

  def create
    @medical_procedure = MedicalProcedure.new(content: params[:content])
    if @medical_procedure.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
  end

  # private

  # def params_medical_procedures
  #   params.require(:medical_procedures).permit(:content)
  # end

end
