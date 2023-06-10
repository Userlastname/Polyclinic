require 'rails_helper'

RSpec.describe Appointment, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:user).dependent(:destroy) }

    it { is_expected.to belong_to(:doctor).dependent(:destroy) }
  end
end
