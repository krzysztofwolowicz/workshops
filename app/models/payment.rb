class Payment < ActiveRecord::Base
  belongs_to :student
  validates :value, :date, :for_month, presence: true
end
