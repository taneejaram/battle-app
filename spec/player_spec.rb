require 'player'

describe Player do
  let(:tan) { Player.new("Tan") }

  it 'can return its name' do
    expect(tan.name).to eq('Tan')
  end


end
