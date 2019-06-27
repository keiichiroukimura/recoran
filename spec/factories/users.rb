FactoryBot.define do
  factory :user do
    name { 'テストユーザー' }
    email { 'test@test.com' }
    password { '123456' }
  end
end