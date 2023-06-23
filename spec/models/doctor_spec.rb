# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Doctor, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:category).dependent(:destroy) }

    it { is_expected.to have_many(:appointments).dependent(:destroy) }

    it { is_expected.to have_many(:users).through(:appointments) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:phone) }

    it { is_expected.to validate_uniqueness_of(:phone).case_insensitive }

    it { is_expected.to allow_value('1234567890').for(:phone) }

    it { is_expected.not_to allow_value('o234567890').for(:phone).with_message('should be a 10-digit number') }
  end
end
