require 'rails_helper'

RSpec.feature "投稿のテスト", type: :system do
  let(:user_a) {FactoryBot.create(:user , name: 'AAA' , email: 'a@co.com')}
  FactoryBot.create(:music)
  FactoryBot.create(:post, user: user_a)
  before do
    visit new_user_session_path
    fill_in 'user_email' , with: user_a.email
    fill_in 'user_password' , with: user_a.password
    click_on 'Log in'
  end
  scenario "投稿登録のテスト" do
    visit new_post_path
    expect(page).to have_content 'otis'
  end
  # scenario "music選び直しのテスト" do
  #   visit musics_path
  #   fill_in 'search', with: '魚の骨 鳥の羽根'
  #   click_on "選曲"
  #   expect(page).to have_content 'POLY LIFE MULTI SOUL'
  #   click_on "選ぶ!!"
  #   expect(page).to have_content '選び直す'
  #   click_on "選び直す"
  #   page.driver.browser.switch_to.alert.accept
  # end
end