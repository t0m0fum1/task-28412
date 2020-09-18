require 'rails_helper'
require 'securerandom'

RSpec.describe Content, type: :model do
  before do
    @content = FactoryBot.build(:content)
  end

  describe 'コンテンツ投稿' do
    context 'コンテンツ投稿ができるとき' do
      it 'image、messageが存在すれば、コンテンツを投稿できる' do
        expect(@content).to be_valid
      end

      it 'messageが40文字以内であれば、コンテンツを投稿できる' do
        @content.message = SecureRandom.alphanumeric(40)
        expect(@content).to be_valid
      end
      
    end
    
    context 'コンテンツ投稿できないとき' do
      it 'imageが空である時、コンテンツは投稿できない' do
        @content.image = nil
        @content.valid?
        expect(@content.errors.full_messages).to include("Image can't be blank")
      end
      
      it 'messageが空である時、コンテンツは投稿できない' do
        @content.message = nil
        @content.valid?
        expect(@content.errors.full_messages).to include("Message can't be blank")
      end
      
      it 'messageが41文字以上であれば投稿できない' do
        @content.message = SecureRandom.alphanumeric(41)
        @content.valid?
        expect(@content.errors.full_messages).to include("Message is too long (maximum is 40 characters)")
      end
    end

  end

end
