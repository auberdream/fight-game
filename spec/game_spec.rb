require_relative '../index.rb'

describe RunGame do
  it 'returns true when tested' do
    expect(RunGame.new.test).to eq true
  end
end
