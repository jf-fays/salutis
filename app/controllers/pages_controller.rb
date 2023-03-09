class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home]

  def home
  end

  def dashboard
    @users = current_user
    @patients = current_user.patients
    if params[:query].present?
      sql_query = <<~SQL
        patients.first_name @@ :query
        OR patients.last_name @@ :query
        OR patients.social_security_number @@ :query
      SQL
    else
      @patients = Patient.all
    end
  end
end
