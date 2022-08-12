require 'rails_helper'

RSpec.describe Book do
  let(:book){Book.new(title: "hello", publisher: "hello", author_id: 22)}
  describe 'validations' do
    describe 'title' do
      it 'author_id must be present' do
        expect(book).to_not be_valid
      end
    end
  end

  describe '#formatted_name' do
    it 'returns the publisher and title in a string' do
      expect(book.formatted_name).to eql('hello hello')
    end
  end
end
