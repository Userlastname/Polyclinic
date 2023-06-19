class UsersController < ApplicationController
  def profile
    @user = current_user
    @appointments = @user.appointments.includes(:doctor)
  end
end
