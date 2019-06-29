require 'rails_helper'

RSpec.describe "投稿のテスト", type: :system do
  FactoryBot.create(:music)
  let(:user_a) {FactoryBot.create(:user , name: 'AAA' , email: 'a@co.com')}
  before do
    visit new_user_session_path
    fill_in 'user_email' , with: user_a.email
    fill_in 'user_password' , with: user_a.password
    click_on 'Log in'
  end
  it "投稿のテスト" do
    visit musics_path
    fill_in 'search', with: '魚の骨 鳥の羽根'
    click_on "選曲"
    expect(page).to have_content 'POLY LIFE MULTI SOUL'
    click_on "選ぶ!!"
    fill_in 'post_content' , with: 'aaa'
    click_on "play it loud!!"
    expect(page).to have_content 'aaa'
  end
end