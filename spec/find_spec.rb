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
end
