require 'spec_helper'

describe 'black hole null object' do
  subject(:null) { null_class.new }
  let(:null_class) {
    Naught.build do |b|
      b.black_hole
    end
  }

  it 'returns self from arbitray method calls' do
    expect(null.info).to be(null)
    expect(null.foobaz).to be(null)
    expect(null << "bar").to be(null)
  end
  
  it 'returns callstack from arbitray method calls' do
    expect(null.down.the.rabbit.hole.__callstack__).to eq [:down, :the, :rabbit, :hole]
  end

end
