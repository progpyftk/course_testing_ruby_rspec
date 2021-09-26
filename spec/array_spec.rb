RSpec.describe Array do 
  it 'has a length' do
    expect(subject.length).to eq(0)
    subject << 1
    expect(subject.length).to eq(1)
  end
end