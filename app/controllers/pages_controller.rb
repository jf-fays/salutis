class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home]

  def home
  end

  def dashboard
    @patients = current_user.patients
    if params[:query].present?
      @patients = Patient.search_by_first_name_and_last_name_and_social_security_number(params[:query])
    else
      @patients = Patient.all
    end
  end
end
