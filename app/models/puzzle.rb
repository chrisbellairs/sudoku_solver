class Puzzle < ApplicationRecord
  def build_puzzle
    puzzle_array = [[@puzzle.cell_01, @puzzle.cell_02, @puzzle.cell_03, @puzzle.cell_04, @puzzle.cell_05, @puzzle.cell_06, @puzzle.cell_07, @puzzle.cell_06, @puzzle.cell_09],
                    [@puzzle.cell_10, @puzzle.cell_11, @puzzle.cell_12, @puzzle.cell_13, @puzzle.cell_14, @puzzle.cell_15, @puzzle.cell_16, @puzzle.cell_17, @puzzle.cell_18],
                    [@puzzle.cell_19, @puzzle.cell_20, @puzzle.cell_21, @puzzle.cell_22, @puzzle.cell_23, @puzzle.cell_24, @puzzle.cell_25, @puzzle.cell_26, @puzzle.cell_27],
                    [@puzzle.cell_28, @puzzle.cell_29, @puzzle.cell_30, @puzzle.cell_31, @puzzle.cell_32, @puzzle.cell_33, @puzzle.cell_34, @puzzle.cell_35, @puzzle.cell_36],
                    [@puzzle.cell_37, @puzzle.cell_38, @puzzle.cell_39, @puzzle.cell_40, @puzzle.cell_41, @puzzle.cell_42, @puzzle.cell_43, @puzzle.cell_44, @puzzle.cell_45],
                    [@puzzle.cell_46, @puzzle.cell_47, @puzzle.cell_48, @puzzle.cell_49, @puzzle.cell_50, @puzzle.cell_51, @puzzle.cell_52, @puzzle.cell_53, @puzzle.cell_54],
                    [@puzzle.cell_55, @puzzle.cell_56, @puzzle.cell_57, @puzzle.cell_58, @puzzle.cell_59, @puzzle.cell_60, @puzzle.cell_61, @puzzle.cell_62, @puzzle.cell_63],
                    [@puzzle.cell_64, @puzzle.cell_65, @puzzle.cell_66, @puzzle.cell_67, @puzzle.cell_68, @puzzle.cell_69, @puzzle.cell_70, @puzzle.cell_71, @puzzle.cell_72],
                    [@puzzle.cell_73, @puzzle.cell_74, @puzzle.cell_75, @puzzle.cell_76, @puzzle.cell_77, @puzzle.cell_78, @puzzle.cell_79, @puzzle.cell_80, @puzzle.cell_81]]
  end
end
