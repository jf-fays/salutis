class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home]

  def home
  end

  def dashboard
    @users = current_user
    @patients = current_user.patients
  end
end
