RSpec.describe '#even? method' do
   
    context 'with even number' do # it also can be the method #describe instead of context, they are the same
        it 'should return true' do
            expect(4.even?).to eq(true)
        end
    end

    context 'with odd number' do
        it 'should return false' do
        expect(5.even?).to eq(false)
        end
    end

end