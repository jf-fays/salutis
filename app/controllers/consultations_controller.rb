class ConsultationsController < ApplicationController
  before_action :find_consultation, only: [show:]
  def show

  end

  def new
    @consultation = Consulation.new
  end

  def create

  end

  private

  def params_consultation
    params.require(:consulation).permit(:date)
  end

  def find_consultation
    @consulation = Consultation.find(params[:id])
  end
end
