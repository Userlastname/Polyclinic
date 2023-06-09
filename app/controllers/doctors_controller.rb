class DoctorsController < ApplicationController
  def show
    @doctor = resource
  end

  def update_recommendation
    @appointment = Appointment.find(params[:appointment_id])
    @appointment.update(recommendation: params[:recommendation])
    flash[:success] = 'Recommendation added successfully'
    redirect_to request.referer
  end

  def recommendations
    @doctor = current_doctor
    @appointments = @doctor.appointments.includes(:user)
  end
  private

  def collection
    Doctors.ordered
  end

  def resource
    collection.find(params[:id])
  end
end
