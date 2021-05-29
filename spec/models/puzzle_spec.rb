require 'rails_helper'

RSpec.describe Puzzle, type: :model do
  puzzle = Puzzle.new
  test_arr = [[0, 0, 0, 2, 6, 0, 7, 0, 1],
              [6, 8, 0, 0, 7, 0, 0, 9, 0],
              [1, 9, 0, 0, 0, 4, 5, 0, 0],
              [8, 2, 0, 1, 0, 0, 0, 4, 0],
              [0, 0, 4, 6, 0, 2, 9, 0, 0],
              [0, 5, 0, 0, 0, 3, 0, 2, 8],
              [0, 0, 9, 3, 0, 0, 0, 7, 4],
              [0, 4, 0, 0, 5, 0, 0, 3, 6],
              [7, 0, 3, 0, 1, 8, 0, 0, 0]]

  expected_arr = [[4, 3, 5, 2, 6, 9, 7, 8, 1],
                  [6, 8, 2, 5, 7, 1, 4, 9, 3],
                  [1, 9, 7, 8, 3, 4, 5, 6, 2],
                  [8, 2, 6, 1, 9, 5, 3, 4, 7],
                  [3, 7, 4, 6, 8, 2, 9, 1, 5],
                  [9, 5, 1, 7, 4, 3, 6, 2, 8],
                  [5, 1, 9, 3, 2, 6, 8, 7, 4],
                  [2, 4, 8, 9, 5, 7, 1, 3, 6],
                  [7, 6, 3, 4, 1, 8, 2, 5, 9]]

  it 'builds 9 x 9 2D Array' do
    build_puzzle = puzzle.build_puzzle

    expect(build_puzzle.length).to eq 9
    expect(build_puzzle[0].length).to eq 9
  end

  it 'correctly solves a sudoku puzzle.' do
    solve_puzzle = puzzle.solve_puzzle(test_arr)

    expect(solve_puzzle).to eq expected_arr
  end
end
