FactoryBot.define do
  factory :bill do
    name 'PB&J'
    description 'those sammies'
    service_start "2018-01-01"
    service_end "2018-01-31"
    amount 0.11025e3
    status nil
    association :asset
  end
end