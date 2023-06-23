# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:appointments).dependent(:destroy) }

    it { is_expected.to have_many(:doctors).through(:appointments).dependent(:destroy) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:phone) }

    it { is_expected.to validate_presence_of(:email) }

    it { is_expected.to validate_presence_of(:first_name) }

    it { is_expected.to validate_presence_of(:last_name) }

    it { is_expected.to validate_uniqueness_of(:phone).case_insensitive }

    it { is_expected.to allow_value('0971234567').for(:phone) }

    it { is_expected.not_to allow_value('one2345678').for(:phone).with_message('should be a 10-digit number') }

    it { is_expected.to allow_value('example@gmail.com').for(:email) }

    it do
      is_expected.not_to allow_value('SkinnyA$$@gmail.com')
        .for(:email)
        .with_message('should be a valid email address')
    end
  end
end
