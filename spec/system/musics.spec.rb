require 'rails_helper'

RSpec.feature "タスク管理機能", type: :feature do
  before do
    FactoryBot.create(:music)
    FactoryBot.create(:second_task, user: user_a)
  end
  scenario "タスク一覧のテスト" do
    visit new_session_path
    fill_in 'session_email', with: 'crybaby@email.com'
    fill_in 'session_password', with: '111111'
    click_on "Log in"
    expect(page).to have_content 'タスク一覧'
  end
  scenario "タスク作成のテスト" do
    visit new_session_path
    fill_in 'session_email', with: 'crybaby@email.com'
    fill_in 'session_password', with: '111111'
    click_on "Log in"
    click_on "タスクを登録する"
    fill_in 'new_title', with: 'test_task_01'
    fill_in 'new_content', with: 'testtesttest'
    click_on '登録する'
    expect(page).to have_content 'test_task_01'
    expect(page).to have_content 'testtesttest'
  end
  scenario "タスク詳細のテスト" do
    # Task.create!(user_id: '1', title: 'test_task_01', content: 'testtesttest',deadline: Date.today, priority: '高', status: '未着手')
    visit new_session_path
    fill_in 'session_email', with: 'crybaby@email.com'
    fill_in 'session_password', with: '111111'
    click_on "Log in"
    all('table tr')[1].click_link '詳細'
    expect(page).to have_content 'test_task_02'
    expect(page).to have_content 'samplesample'
    expect(page).to have_content  Date.today + 1
    expect(page).to have_content '中'
    expect(page).to have_content '未着手'
  end
end