Rails app generated alongside a Postgres database.

Generated puzzle model with a column for each puzzle cell.

Generated puzzles controller.

Opted for just the one class of puzzle. Considered also creating a puzzle_solver class for the sake of single responsibility, but felt the application was simple enough that it would not take much effort to seperate the tasks in the future if needed.

Created routes index, new, create and show routes for puzzles.

Built the index view containing the puzzle input form. Used bootsrap for basic styling. Used some custom css to size the puzzle and remove chrome input field styling.

Added code to puzzle controller to create new puzzle instance when form is submitted and display on show page. Created a private puzzle_params method to prevent SQL Injection.

Created Puzzle class instance method, build_puzzle, that returns a 2d array of the submitted puzzle.

Added a default of 0 to all cells to make user input easier.

Installed rspec. Aware I should have coded a test for build_puzzle before coding it.

Coded test for build_puzzle method checking that it returns a 9x9 2D Array.

Coded test for solve_puzzle method to ensure it solves the example correctly.

Created solve_puzzle instance method. Method loops as long as there are empty cells left to calculate. At each cell containing zero it finds the numbers in each square, row and column. If there are 8 individual numbers it fills the cell with the missing number between one and nine.

I have used private methods with solve_puzzle to ensure that it retains single responcibility.

I used pry to debug the code as the tests were not initially passing. I had one conditional break that was stopping the method from completing it's task as well as some errors in index numbers.

I have added a second example puzzle to confirm it is working correctly.

Created example and test to check that solve_puzzle returns a string if puzzle is unsolvable.

Created break clause to return a message when the puzzle is unsolvable.

Removed bootstrap from simple form to making styling easier and changed inputs to select fields.

Created show page to display either an error message or the solved puzzle. Added variables making the instance method calls in the controller to enable this.

Styled both the index and show page.

App complete, but have realised the ability to edit the puzzle I just input if it comes back as unsolvable would be really useful. Added edit and update to routes and added code for both into the controller.

Created edit page and added a link to the edit page if a puzzle comes back as unsolvable. Also added link to create new puzzle on successful show page.
