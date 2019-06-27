require "rails_helper"

RSpec.describe Music, type: :model do

  context 'music登録のテスト' do
    it 'Musicを作成する' do
      music = FactoryBot.create(:music)
      expect(music).to be_valid
    end
  end
end