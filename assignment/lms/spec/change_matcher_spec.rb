RSpec.describe 'change matcher' do
  subject { [1, 2, 3, 5] }

  it 'checks that a method changes object state' do
    expect { subject.push(4) }.to change { subject.length }.by(1)

  end
end
