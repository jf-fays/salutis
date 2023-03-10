class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home]

  def home
    # @patients = Patient.all
  end

  def dashboard
    @patients = current_user.patients
    if params[:query].present?
      @patients = Patient.search_by_first_name_and_last_name_and_social_security_number(params[:query])
    end
  end
end
