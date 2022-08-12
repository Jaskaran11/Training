RSpec.describe 'it will raise error' do

  def print_name
    x
  end

  class CustomError < StandardError; end

  it 'will check for a specific error being raised' do
    expect { print_name }.to raise_error(NameError)
    expect { 10 / 0 }.to raise_error(ZeroDivisionError)
  end

  it 'can check for a user-created error' do
    expect { raise CustomError }.to raise_error(CustomError)
  end
end
