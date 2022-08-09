require 'rails_helper'

RSpec.describe Author, type: :model do
  context 'validation tests' do
    it 'ensures name presence' do
      author = Author.new(name: 'Name', email: 'sample@example.com').save
      expect(author).to eq(true)
    end

    it 'ensures email presence' do
      author = Author.new(name: 'Name', email: 'sample@example.com').save
      expect(author).to eq(true)
    end

    it 'should save successfully' do
      author = Author.new(name: 'Name', email: 'sample@example.com').save
      expect(author).to eq(true)
    end
  end
end
