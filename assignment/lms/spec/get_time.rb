RSpec.describe "GetTime" do
  let!(:current_time) { Time.now }

  before(:each) do
    puts Time.now # => 2018-07-19 09:57:52 +0300
  end

  it "gets the time" do
    sleep(3)
    puts current_time # => 2018-07-19 09:57:52 +0300
  end
end
