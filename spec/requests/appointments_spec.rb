require 'rails_helper'

RSpec.describe AppointmentsController, type: :request do
  describe "POST /appointments" do
    it "creates a new appointment" do
      doctor = FactoryBot.create(:doctor)
      user = FactoryBot.create(:user)
      sign_in user

      appointment_params = {
        doctor_id: doctor.id,
        user_id: user.id,
      }

      post appointments_path, params: appointment_params

      expect(response).to have_http_status(302)
      expect(response).to redirect_to(root_path)

      appointment = Appointment.last
      expect(appointment).not_to be_nil
      expect(appointment.doctor).to eq(doctor)
      expect(appointment.user).to eq(user)
    end
  end
end
