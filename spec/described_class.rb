class King
    attr_reader :name

    def initialize
        @name = name
    end
end

# instead of using the class's name we can use described_class method, imagine if it changes it's name ... 
RSpec.describe King do
    subject {described_class.new('Boris')}
    let(:louis) {described_class.new('Louis')}

    it 'represents a great person' do
        expect(subject.name).to eq('Boris')
        expext(louis.name).to eq('Louis')
    end
end
