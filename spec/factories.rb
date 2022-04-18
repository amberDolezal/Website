FactoryBot.define do
    factory :user do
        id {1}
        email { "test@gmail.com" }
        password { "password" }
        password_confirmation { "password" }
    end
  end