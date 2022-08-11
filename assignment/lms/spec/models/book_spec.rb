require 'rails_helper'

RSpec.describe Book do
  describe 'validations' do
    describe 'title' do
      it 'must be present' do
        book = Book.new
        expect(book).to_not be_valid
      end
    end
  end

  describe '#formatted_name' do
    it 'returns the publisher and title in a string' do
      expect(Book.formatted_name).to eql('Casemate Publishers Look Homeward, Angel')
    end
  end
end
