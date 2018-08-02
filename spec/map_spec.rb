require_relative '../lib/map'

RSpec.describe 'map' do
  it 'applies a function to every element of a list' do
    expect(map([1,2,3]) { |v| v * 2 }).to eq([2,4,6])
  end

  it 'works if yield is used instead of an explicit function call' do
    expect(map2([1,2,3]) { |v| v * 2 }).to eq([2,4,6])
  end

  it 'can be implemented with each as well' do
    expect(map3([1,2,3]) { |v| v * 2 }).to eq([2,4,6])
  end
end
