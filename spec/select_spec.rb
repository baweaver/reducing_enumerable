require_relative '../lib/select'

RSpec.describe 'select' do
  it 'applies a function to every element of a list' do
    expect(select([1,2,3]) { |v| v.even? }).to eq([2])
    expect(select2([1,2,3]) { |v| v.even? }).to eq([2])
  end
end
