class AppointmentsController < ApplicationController
  def new
  end

  def create
    @appointment = Appointment.new(appointment_params)

    if @appointment.save
      flash[:success] = "You've made an appointment"
      redirect_to request.referer
    else
      render :new
      flash[:error] = "Sorry, something went wrong"
    end
  end

  private

  def appointment_params
    params.permit(:user_id, :doctor_id, :recommendation)
  end
end
