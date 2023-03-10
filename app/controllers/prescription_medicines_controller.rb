class PrescriptionMedicinesController < ApplicationController
  before_action :find_pres, only: [:show, :edit, :update, :delete]
  def index
    @prescription_medicines = PrescriptionMedicine.all
  end

  def show
  end

  def new
    @prescription = Prescription.create(params[:prescription_id])
    @pres_med = PrescriptionMedicine.new
    # @medical_procedures = MedicalProcedure.new
  end

  def create
    raise
    @pres_med = PrescriptionMedicine.new(params_presc)
    @prescription = Prescription.find(params[:id])
    @medical = MedicalProcedure.find(params[:medical_procedures])
    # @medicines =
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def params_presc
    params.require(:prescription_medicine).permit(:duration, :dosage)
  end

  def find_pres
    @prescription_medicine = PrescriptionMedicines.find(params[:id])
  end
end
