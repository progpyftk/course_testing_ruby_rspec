RSpec.describe Hash do # to use subject we MUST pass the class, not a string
    it 'should start off empty' do
        expect(subject.length).to eq(0)
        subject[:some_key] = "Some value"
        expect(subject.length).to eq(1) # subject method will call the described class, it avoids to use let method
    end

    # subject is isolated between the examples
    it 'is isolated between examples' do 
        expect(subject.length).to eq(0)
    end


end
