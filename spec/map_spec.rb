require_relative '../lib/map'

RSpec.describe 'map' do
  it 'applies a function to every element of a list' do
    expect(map([1,2,3]) { |v| v * 2 }).to eq([2,4,6])
    expect(map2([1,2,3]) { |v| v * 2 }).to eq([2,4,6])
  end
end
