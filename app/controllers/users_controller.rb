class UsersController < ApplicationController
  def appointments
    @user = current_user
    @appointments = @user.appointments.includes(:doctor)
  end
end
