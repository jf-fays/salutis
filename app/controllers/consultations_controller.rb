class ConsultationsController < ApplicationController
  def show

  end

  def new
    @consulation = Consulation.new
  end

  def create

  end

  private

  def params_consultation
  end

  def find_consultation
    params.require(:consulation).permit(:date)
  end
end
