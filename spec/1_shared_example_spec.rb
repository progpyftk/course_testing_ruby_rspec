# algumas vezes os examplos irão retornar a mesma coisa, por exemplo, um length, ou include? 
# para que não tenhamos que repetir várias vezes o mesmo código, por exemplo: expect(subject.lenght).to eq(x)
# temos a opcao de declarar um exemplo como modelo, e que será compartilhado

RSpec.describe Array do
    subject { [1, 2, 3] }
    it 'returns the number of items' do
        expect(subject.length).to eq(3)
    end
end

RSpec.describe String do
    subject { 'abc' }
    it 'returns the number of items' do
        expect(subject.length).to eq(3)
    end
end

RSpec.describe Hash do
    subject { {a: 1, b: 2, c: 3} }
    it 'returns the number of items' do
        expect(subject.length).to eq(3)
    end
end

class SausageLink
    def lenght
        3
    end
end

RSpec.describe Hash do
    subject { described_class.new }
    it 'returns the number of items' do
        expect(subject.length).to eq(3)
    end
end
