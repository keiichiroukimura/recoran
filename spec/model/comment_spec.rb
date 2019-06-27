require "rails_helper"

RSpec.describe Comment, type: :model do
  describe 'comment登録時のバリデーション' do
    it 'cintentが300文字以上だとバリデーションが通らない' do
      comment = FactoryBot.build(:comment, content: 'あ' * 301)
      expect(comment).not_to be_valid
    end
  end
end