class MedicinesController < ApplicationController
  before_action :find_medicine, only: [:show, :update]
  def index
    @medicines = Medicine.all
  end

  def show
    # @medicine = Medicine.find(params[:id])
  end

  def new
    @medicine = Medicine.new
  end

  def create
    @medicine = Medicine.new(params_medicines)
    if @medicine.save
      redirect_to medicines_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @medicine.update(params_medicines)
      redirect_to medicine_path(@medicine.id)
    else
      render :show, status: :unprocessable_entity
    end
  end

  private

  def params_medicines
    params.require(:medicine).permit(:name, :NR, :id)
  end

  def find_medicine
    @medicine = Medicine.find(params[:id])
  end
end
