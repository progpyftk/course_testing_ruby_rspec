RSpec.describe 'shorthand syntax' do
    subject { 5 }

    context 'with classical syntax' do
        it 'should equal 5' do
            expect(subject).to eq(5)
        end
    end

    context 'with one liner syntax' do
        it { is_expected.to equal(5) } 
    end # it the as above, but in one line - is_expected method knows we are testing subject
end