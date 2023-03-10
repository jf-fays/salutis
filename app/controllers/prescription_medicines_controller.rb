class PrescriptionMedicinesController < ApplicationController
  before_action :find_pres, only: [:show, :edit, :update, :delete]
  def index
    @prescription_medicines = PrescriptionMedicine.all
  end

  def show
  end

  def create
    @prescription_medicine = PrescriptionMedicine.new(
      duration: params[:prescription_medicine][:duration],  dosage: params[:prescription_medicine][:dosage],
      medicine_id: params[:prescription_medicine][:medicine_id], prescription_id: params[:prescription_id]
    )
    if @prescription_medicine.save
      redirect_to prescription_path(params[:prescription_id])
    else
      redirect_to prescription_path(params[:prescription_id]), status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def params_presc
    params.require(:prescription_medicine).permit(:duration, :dosage, :medicine_id, :daily_take)
  end

  def find_pres
    @prescription_medicine = PrescriptionMedicines.find(params[:id])
  end
end
