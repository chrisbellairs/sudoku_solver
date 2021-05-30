class PuzzlesController < ApplicationController
  def index
    @puzzle = Puzzle.new
  end

  def create
    @puzzle = Puzzle.new(puzzle_params)
    @puzzle.save
    redirect_to puzzle_path(@puzzle)
  end

  def show
    @puzzle = Puzzle.find(params[:id])
    @solved_puzzle = @puzzle.solve_puzzle(@puzzle.build_puzzle)
  end

  def edit
    @puzzle = Puzzle.find(params[:id])
  end

  def update
    @puzzle = Puzzle.find(params[:id])
    @puzzle.update(puzzle_params)
    redirect_to puzzle_path(@puzzle)
  end

  private

  def puzzle_params
    params.require(:puzzle).permit(:cell_01, :cell_02, :cell_03, :cell_04, :cell_05, :cell_06, :cell_07, :cell_08, :cell_09, :cell_10, :cell_11, :cell_12, :cell_13, :cell_14, :cell_15, :cell_16, :cell_17, :cell_18, :cell_19, :cell_20, :cell_21, :cell_22, :cell_23, :cell_24, :cell_25, :cell_26, :cell_27, :cell_28, :cell_29, :cell_30, :cell_31, :cell_32, :cell_33, :cell_34, :cell_35, :cell_36, :cell_37, :cell_38, :cell_39, :cell_40, :cell_41, :cell_42, :cell_43, :cell_44, :cell_45, :cell_46, :cell_47, :cell_48, :cell_49, :cell_50, :cell_51, :cell_52, :cell_53, :cell_54, :cell_55, :cell_56, :cell_57, :cell_58, :cell_59, :cell_60, :cell_61, :cell_62, :cell_63, :cell_64, :cell_65, :cell_66, :cell_67, :cell_68, :cell_69, :cell_70, :cell_71, :cell_72, :cell_73, :cell_74, :cell_75, :cell_76, :cell_77, :cell_78, :cell_79, :cell_80, :cell_81)
  end
end
