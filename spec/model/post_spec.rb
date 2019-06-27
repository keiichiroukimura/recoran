require "rails_helper"

RSpec.describe Post, type: :model do
  context 'Post登録のテスト' do
    it 'contentが空ならバリデーションが通らない' do
      post = FactoryBot.build(:post, content: '')
      expect(post).not_to be_valid
    end
    
    it "contentに内容が記載されていればバリデーションが通る" do
      user_a = FactoryBot.create(:user)
      post = Post.new(content: 'テスト成功', user: user_a)
      expect(post).to be_valid
    end
  end
end