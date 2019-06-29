require 'rails_helper'

RSpec.feature "musicの選曲、登録のテスト", type: :system do
  FactoryBot.create(:music)
  let(:user_a) {FactoryBot.create(:user , name: 'AAA' , email: 'a@co.com')}
  before do
    visit new_user_session_path
    fill_in 'user_email' , with: user_a.email
    fill_in 'user_password' , with: user_a.password
    click_on 'Log in'
  end
  scenario "music登録のテスト" do
    visit musics_path
    fill_in 'search', with: '魚の骨 鳥の羽根'
    click_on "選曲"
    expect(page).to have_content 'POLY LIFE MULTI SOUL'
    click_on "選ぶ!!"
    expect(page).to have_content '選び直す'
  end
  scenario "music選び直しのテスト" do
    visit musics_path
    fill_in 'search', with: '魚の骨 鳥の羽根'
    click_on "選曲"
    expect(page).to have_content 'POLY LIFE MULTI SOUL'
    click_on "選ぶ!!"
    expect(page).to have_content '選び直す'
    click_on "選び直す"
    page.driver.browser.switch_to.alert.accept
  end
end