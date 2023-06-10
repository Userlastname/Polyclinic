require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:appointments).dependent(:destroy) }

    it { is_expected.to have_many(:doctors).through(:appointments) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:phone) }

    it { is_expected.to validate_presence_of(:first_name) }

    it { is_expected.to validate_presence_of(:last_name) }

    it { is_expected.to validate_uniqueness_of(:phone).case_insensetive }
  end
end
