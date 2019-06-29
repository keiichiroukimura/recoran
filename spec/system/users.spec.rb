require 'rails_helper'

RSpec.feature "ユーザー毎のタスク管理機能", type: :feature do
  before do
    FactoryBot.create(:user)
  end 
    it "ユーザー登録のテスト" do 
    visit new_user_registration_path
    fill_in 'user_name', with: 'jerry garcia'
    fill_in 'user_email', with: 'test@sg.com'
    fill_in 'user_password', with: '111111'
    fill_in 'user_password_confirmation', with: '111111'
    
    click_on "Sign up" 
    expect(page).to have_content 'アカウント登録が完了しました。'
    
  end
  it "login機能,ユーザー詳細ページ遷移,Logout機能テスト" do 
    visit new_user_session_path
    fill_in 'user_email', with: 'test@test.com'
    fill_in 'user_password', with: '123456'
    click_on "Log in"
    expect(page).to have_content 'ログインしました。'
    click_on 'log out'
    expect(page).to have_content 'ログアウトしました'
  end
  it "ユーザープロフィール編集ページ遷移" do 
    visit new_user_session_path
    fill_in 'user_email', with: 'test@test.com'
    fill_in 'user_password', with: '123456'
    click_on "Log in"
    expect(page).to have_content 'ログインしました。'
    click_on "プロフィール編集"
    expect(page).to have_content 'name'
  end
  it "ユーザー退会機能" do 
    visit new_user_session_path
    fill_in 'user_email', with: 'test@test.com'
    fill_in 'user_password', with: '123456'
    click_on "Log in"
    expect(page).to have_content 'ログインしました。'
    click_on "プロフィール編集"
    expect(page).to have_content 'name'
    click_on "退会"
    expect(page).to have_content 'アカウントを削除しました。またのご利用をお待ちしております。'
  end
end
