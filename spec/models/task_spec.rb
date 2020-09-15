require 'rails_helper'
require 'securerandom'

RSpec.describe Task, type: :model do
  describe '#create' do
    before do
      @task = FactoryBot.build(:task)
    end

    describe 'タスクを投稿する' do
      context 'タスク投稿が上手くいくとき' do
        it 'priority_id、textが存在すれば投稿できる' do
          expect(@task).to be_valid
        end

        it 'textが40文字以内であれば投稿できる' do
          @task.text = SecureRandom.alphanumeric(40)
          expect(@task).to be_valid
        end

      end


      context 'タスク投稿が上手くいかないとき' do
        it 'priority_idが1のときは投稿できない' do
          @task.priority_id = '1'
          @task.valid?
          expect(@task.errors.full_messages).to include("Priority must be other than 1")
        end

        it 'textが41文字以上であるときは投稿できない' do
          @task.text = SecureRandom.alphanumeric(41)
          @task.valid?
          expect(@task.errors.full_messages).to include("Text is too long (maximum is 40 characters)")
        end

        it 'textが空である時は投稿できない' do
          @task.text = nil
          @task.valid?
          expect(@task.errors.full_messages).to include("Text can't be blank")
        end

      end

    end


  end
end
