require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#create' do
    before do
      @user = FactoryBot.build(:user)
    end

    describe 'ユーザー新規登録' do
      context '新規登録が上手くいくとき' do
        it 'nameとemail、password、password_confirmationが存在すれば登録できる' do
          expect(@user).to be_valid
        end

        it 'passwordが6文字以上であれば登録できること' do
          @user.password = '000000'
          @user.password_confirmation = '000000'
          expect(@user).to be_valid
        end

      end

      context '新規登録が上手くいかないとき' do
        it 'nameが空であれば登録できないこと' do
          @user.name = nil
          @user.valid?
          expect(@user.errors.full_messages).to include("Name can't be blank")
        end

        it 'emailが空であれば登録できないこと' do
          @user.email = nil
          @user.valid?
          expect(@user.errors.full_messages).to include("Email can't be blank")
        end

        it '重複したemailが存在する場合は登録ができないこと' do
          @user.save
          another_user = FactoryBot.build(:user,email: @user.email)
          another_user.valid?
          expect(another_user.errors.full_messages).to include("Email has already been taken")
        end

        it 'emailに@が含まれていないと登録できないこと' do
          @user.email = 'aaabbbcccdddeee'
          @user.valid?
          expect(@user.errors.full_messages).to include("Email is invalid")
        end

        it 'passwordが空であれば登録できないこと' do
          @user.password = nil
          @user.valid?
          expect(@user.errors.full_messages).to include("Password can't be blank")
        end
        
        it 'passwordが存在してもpassword_confirmationが空であれば登録できないこと' do
          @user.password_confirmation = ''
          @user.valid?
          expect(@user.errors.full_messages).to include( "Password confirmation doesn't match Password")
        end

        it 'passwordが5文字以下であれば登録できないこと' do
          @user.password = '00000'
          @user.password_confirmation = '00000'
          @user.valid?
          expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
        end

      end
    end


  end
end
