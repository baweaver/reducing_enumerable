require_relative '../lib/transducers'

RSpec.describe 'transducers' do
  describe '#mapping' do
    it 'maps' do
      mapping_result = [1,2,3].reduce([], &mapping { |v| v * 2 }.call(concats))
      maps_result    = [1,2,3].reduce([], &maps { |v| v * 2 })

      expect(mapping_result).to eq([2,4,6])
      expect(maps_result).to eq([2,4,6])
    end
  end
end
