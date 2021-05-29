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
    while puzzle_contains_zero(arr) do
    end
  end

  private

  def puzzle_contains_zero(arr)
    contains_zero = false
    arr.each do |row|
      row.each do |num|
        if num.zero?
          contains_zero = true
        end
      end
    end
    return contains_zero
  end
end
