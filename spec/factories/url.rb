FactoryBot.define do
    factory :url do 
        sequence(:full_url) { |n| "#{Faker::Internet.url}"}
    end
end