# algumas vezes os examplos irão retornar a mesma coisa, por exemplo, um length, ou include? 
# para que não tenhamos que repetir várias vezes o mesmo código, por exemplo: expect(subject.lenght).to eq(x)
# temos a opcao de declarar um exemplo como modelo, e que será compartilhado

# VER O ARQUIVO 1_SHARED_EXAMPLE

RSpec.shared_examples 'items with 3 objects' do
    it 'lenght equals 3' do
        expect(subject.length).to eq(3)
    end
end


RSpec.describe Array do
    subject { [1, 2, 3] }
    include_examples 'items with 3 objects'
end

RSpec.describe String do
    subject { 'abc' }
    include_examples 'items with 3 objects'
end

RSpec.describe Hash do
    subject { {a: 1, b: 2, c: 3} }
    include_examples 'items with 3 objects'
end

class SausageLink
    def length
        3
    end
end

RSpec.describe SausageLink do
    subject { described_class.new }
    include_examples 'items with 3 objects'
end
