FactoryBot.define do
  factory :user do
    id {1}
    name { 'テストユーザー' }
    email { 'test@test.com' }
    password { '123456' }
  end
end