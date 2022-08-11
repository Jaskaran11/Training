require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'validations' do
    describe 'title' do
      it 'must be present' do
        book = Book.new
        expect(book).to_not be_valid
      end
    end
  end
end
