require 'rails_helper'

RSpec.describe Puzzle, type: :model do
  it 'builds 9 x 9 2D Array' do
    puzzle = Puzzle.new
    build_puzzle = puzzle.build_puzzle
    expect(build_puzzle.length).to eq 9
    expect(build_puzzle[0].length).to eq 9
  end
end
