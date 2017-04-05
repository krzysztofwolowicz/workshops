FactoryGirl.define do
  factory :payment do
    value Faker::Number.between(2, 1000)
student nil
date Faker::Date.between(5.days.ago, Date.today)
for_month Faker::Date.between(3.months.ago, Date.today)
  end

end
