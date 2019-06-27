require "rails_helper"

RSpec.describe Music, type: :model do

  context 'music登録のテスト' do
    it 'Musicを作成する' do
      music = FactoryBot.create(:music)
      expect(music).to be_valid
    end
    it 'artist_nameが空ならバリデーションが通らない' do
      music = FactoryBot.build(:music, artist_name: '')
      expect(music).not_to be_valid
    end
    it 'track_nameが空ならバリデーションが通らない' do
      music = FactoryBot.build(:music, track_name: '')
      expect(music).not_to be_valid
    end
    it 'album_nameが空ならバリデーションが通らない' do
      music = FactoryBot.build(:music, album_name: '')
      expect(music).not_to be_valid
    end
  end
end