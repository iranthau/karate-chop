require 'spec_helper'

describe KarateChop do
  subject { described_class }

  [
    [-1, [3, []]],
    [-1, [3, [1]]],
    [0,  [1, [1]]],
    [0,  [1, [1, 3, 5]]],
    [1,  [3, [1, 3, 5]]],
    [2,  [5, [1, 3, 5]]],
    [-1,  [0, [1, 3, 5]]],
    [-1, [2, [1, 3, 5]]],
    [-1, [4, [1, 3, 5]]],
    [-1, [6, [1, 3, 5]]],
    [0,  [1, [1, 3, 5, 7]]],
    [1,  [3, [1, 3, 5, 7]]],
    [2,  [5, [1, 3, 5, 7]]],
    [3,  [7, [1, 3, 5, 7]]],
    [-1, [0, [1, 3, 5, 7]]],
    [-1, [2, [1, 3, 5, 7]]],
    [-1, [4, [1, 3, 5, 7]]],
    [-1, [6, [1, 3, 5, 7]]],
    [-1, [8, [1, 3, 5, 7]]]
  ].each do |expected, parameters|
    describe '.chop' do
      it "returns #{expected} as index of #{parameters[0]} in the #{parameters[1]}" do
        expect(subject.chop(parameters[0], parameters[1])).to eq(expected)
      end
    end
  end
end
