require 'rails_helper'

RSpec.describe Payment, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of :value }
    it { is_expected.to validate_presence_of :date }
    it { is_expected.to validate_presence_of :for_month }
  end

  describe 'associations' do
    it { is_expected.to belong_to :student }
  end
end
