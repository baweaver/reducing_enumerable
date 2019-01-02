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

  context 'acceptance' do
    example 'mapping and filtering' do
      result = [1,2,3,4,5]
        .reduce([], &mapping   { |v| v * 3   }.call(concats))
        .reduce([], &filtering { |v| v.even? }.call(concats))
      expect(result).to eq [6, 12]
    end

    example 'works with Ramda' do
      # `gem install ramda-ruby`
      require 'ramda'
      result = [1,2,3,4,5].reduce([], &Ramda.pipe(
        mapping   { |v| v + 1   },
        filtering { |v| v.even? },
        mapping   { |v| v * 3   }
      ).call(concats))
      expect(result).to eq [7, 13]
    end
  end
end
