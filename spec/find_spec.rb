require_relative '../lib/find'

RSpec.describe 'select' do
  it 'applies a function to every element of a list' do
    expect(find([1,2,3]) { |v| v.even? }).to eq(2)
    expect(find2([1,2,3]) { |v| v.even? }).to eq(2)
  end

  it 'returns nil if nothing was found' do
    expect(find([1,2,3]) { |v| v > 4 }).to eq(nil)
    expect(find2([1,2,3]) { |v| v > 4 }).to eq(nil)
  end

  it 'works if yield is used instead of an explicit function call' do
    expect(find2([1,2,3]) { |v| v.even? }).to eq(2)
  end

  it 'can be used with shorthand syntax' do
    expect(find2([1,2,3], &:even?)).to eq(2)
  end

  it 'can be implemented with each as well' do
    expect(find3([1,2,3]) { |v| v.even? }).to eq(2)
  end
end
