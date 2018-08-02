require_relative '../lib/select'

RSpec.describe 'select' do
  it 'applies a function to every element of a list' do
    expect(select([1,2,3]) { |v| v.even? }).to eq([2])
  end

  it 'works if yield is used instead of an explicit function call' do
    expect(select2([1,2,3]) { |v| v.even? }).to eq([2])
  end

  it 'can be used with shorthand syntax' do
    expect(select2([1,2,3], &:even?)).to eq([2])
  end

  it 'can be implemented with each as well' do
    expect(select3([1,2,3]) { |v| v.even? }).to eq([2])
  end
end
