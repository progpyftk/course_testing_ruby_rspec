RSpec.describe 'before and after hooks' do
    before(:example) do
        puts 'before example'
    end

    after(:example) do
        puts 'after the example'
    end

    # this one will run before each context, and by context we can understand
    # the current block, it can be a describe block or a context block
    # it means it will run much less times than before(:example)
    before(:context) do 
        puts 'Before context'
    end

    after(:context) do 
        puts 'After context'
    end


    it 'is just a random example' do
        expect(5*4).to eq(20)
    end

    it 'is just another random example' do
        expect(3-2).to eq(1)
    end
end

