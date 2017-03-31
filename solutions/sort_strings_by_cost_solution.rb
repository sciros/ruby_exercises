require 'rspec'
# given that each string (lower-case alpha chars only) has a 'cost'
# where that cost is the sum of the cost of each letter
# and the cost of each letter is its place in the alphabet (e.g. a = 1, z = 26)
#
# given an array of strings
# sort them according to 'cost' ascending


# testing the solution
describe 'sort strings by cost' do
  it 'should sort strings according to cost' do
    expect(sort_strings_by_cost(%w(tem cab exz))).to eq(%w(cab tem exz))
  end
end
