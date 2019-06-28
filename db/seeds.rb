# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
  email: 'kimura@test.com',
  password: '111111',
  name: 'Keiichirou Kimura',
)
User.create!(
  email: 'y@test.com',
  password: '111111',
  name: '山田 太郎',
)
User.create!(
  email: 'k@test.com',
  password: '111111',
  name: '木村 花子',
)
User.create!(
  email: 'i@test.com',
  password: '111111',
  name: 'tarou ishikawa ',
)

User.create!(
  email: 'j@test.com',
  password: '111111',
  name: 'ジャック ジョンソン',
)