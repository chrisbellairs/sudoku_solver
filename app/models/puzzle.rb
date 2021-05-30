class Puzzle < ApplicationRecord
  def build_puzzle
    puzzle_array = [[cell_01, cell_02, cell_03, cell_04, cell_05, cell_06, cell_07, cell_06, cell_09],
                    [cell_10, cell_11, cell_12, cell_13, cell_14, cell_15, cell_16, cell_17, cell_18],
                    [cell_19, cell_20, cell_21, cell_22, cell_23, cell_24, cell_25, cell_26, cell_27],
                    [cell_28, cell_29, cell_30, cell_31, cell_32, cell_33, cell_34, cell_35, cell_36],
                    [cell_37, cell_38, cell_39, cell_40, cell_41, cell_42, cell_43, cell_44, cell_45],
                    [cell_46, cell_47, cell_48, cell_49, cell_50, cell_51, cell_52, cell_53, cell_54],
                    [cell_55, cell_56, cell_57, cell_58, cell_59, cell_60, cell_61, cell_62, cell_63],
                    [cell_64, cell_65, cell_66, cell_67, cell_68, cell_69, cell_70, cell_71, cell_72],
                    [cell_73, cell_74, cell_75, cell_76, cell_77, cell_78, cell_79, cell_80, cell_81]]
    return puzzle_array
  end

  def solve_puzzle(array)
    arr = array
    count = 0
    while puzzle_contains_zero(arr) do
      return "Puzzle cannot be solved..." if count == 162

      arr.each_with_index do |row, i|
        row.each_with_index do |col, j|
          next unless col.zero?

          surrounding_numbers = retrieve_numbers(arr, i, j)
          if surrounding_numbers.length != 8
            count += 1
          else
            arr[i][j] = 45 - surrounding_numbers.sum
            count = 0
          end
        end
      end
    end
    return arr
  end

  private

  def puzzle_contains_zero(arr)
    contains_zero = false
    arr.each do |row|
      row.each do |num|
        contains_zero = true if num.zero?
      end
    end
    return contains_zero
  end

  def retrieve_numbers(arr, row, col)
    surrounding_numbers = []

    surrounding_numbers << find_square(arr, row, col)
    surrounding_numbers << arr[row]
    surrounding_numbers << find_col(arr, col)

    return surrounding_numbers.flatten.uniq.filter { |num| !num.zero? }
  end

  def find_square(arr, row, col)
    square = []

    if row <= 2
      if col <= 2
        square << arr[0][0..2]
        square << arr[1][0..2]
        square << arr[2][0..2]
      elsif col <= 5
        square << arr[0][3..5]
        square << arr[1][3..5]
        square << arr[2][3..5]
      elsif col <= 8
        square << arr[0][6..8]
        square << arr[1][6..8]
        square << arr[2][6..8]
      end
    elsif row <= 5
      if col <= 2
        square << arr[3][0..2]
        square << arr[4][0..2]
        square << arr[5][0..2]
      elsif col <= 5
        square << arr[3][3..5]
        square << arr[4][3..5]
        square << arr[5][3..5]
      elsif col <= 8
        square << arr[3][6..8]
        square << arr[4][6..8]
        square << arr[5][6..8]
      end
    elsif row <= 8
      if col <= 2
        square << arr[6][0..2]
        square << arr[7][0..2]
        square << arr[8][0..2]
      elsif col <= 5
        square << arr[6][3..5]
        square << arr[7][3..5]
        square << arr[8][3..5]
      elsif col <= 8
        square << arr[6][6..8]
        square << arr[7][6..8]
        square << arr[8][6..8]
      end
    end
    return square.flatten
  end

  def find_col(arr, col)
    column = []
    arr.each do |r|
      column << r[col]
    end
    return column
  end
end
