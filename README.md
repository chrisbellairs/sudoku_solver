/sudoku_solver
Rails app generated alongside a Postgres database.


/app/models/puzzle.rb
Generated puzzle model with a column for each puzzle cell.


/app/controllers/puzzles_controller.rb
Generated puzzles controller.


/app/models/puzzle.rb
Opted for just the one class of puzzle. Considered also creating a puzzle_solver class for the sake of single responsibility, but felt the application was simple enough that it would not take much effort to seperate the tasks in the future if needed.


/config/routes.rb
Created routes index, new, create and show routes for puzzles.


/app/views/index.html.erb
/app/assets/stylesheets/components/puzzle.scss
/app/assets/stylesheets/pages/home.scss
Built the index view containing the puzzle input form. Used bootsrap for basic styling. Used some custom css to size the puzzle and remove chrome input field styling.


/app/controllers/puzzles_controller.rb
Added code to puzzle controller to create new puzzle instance when form is submitted and display on show page. Created a private puzzle_params method to prevent SQL Injection.


/app/models/puzzle.rb
Created Puzzle class instance method, build_puzzle, that returns a 2d array of the submitted puzzle.


/db/migrate/20210528091714_create_puzzles.rb
Added a default of 0 to all cells to make user input easier.



Installed rspec. Aware I should have coded a test for build_puzzle before coding it.


/spec/models/puzzle_spec.rb
Coded test for build_puzzle method checking that it returns a 9x9 2D Array.


/spec/models/puzzle_spec.rb
Coded test for solve_puzzle method to ensure it solves the example correctly.


/app/models/puzzle.rb
Created solve_puzzle instance method. Method loops as long as there are empty cells left to calculate. At each cell containing zero it finds the numbers in each square, row and column. If there are 8 individual numbers it fills the cell with the missing number between one and nine.
I have used private methods with solve_puzzle to ensure that it retains single responcibility.


I used pry to debug the code as the tests were not initially passing. I had one conditional break that was stopping the method from completing it's task as well as some errors in index numbers.


/spec/models/puzzle_spec.rb
I have added a second example puzzle to confirm it is working correctly.


/spec/models/puzzle_spec.rb
Created example and test to check that solve_puzzle returns a string if puzzle is unsolvable.


/app/models/puzzle.rb
Created break clause to return a message when the puzzle is unsolvable.


Removed bootstrap from simple form to making styling easier and changed inputs to select fields.


/app/views/show.html.erb
/app/controllers/puzzles_controller.rb
Created show page to display either an error message or the solved puzzle. Added variables making the instance method calls in the controller to enable this.


/app/assets/stylesheets/components/puzzle.scss
/app/assets/stylesheets/pages/home.scss
/app/assets/stylesheets/pages/show.scss
Styled both the index and show page.


/config/routes.rb
/app/controllers/puzzles_controller.rb
Realised the ability to edit the puzzle if it comes back as unsolvable would be really useful. Added edit and update to routes and added code for both into the controller.

/app/views/edit.html.erb
/app/views/show.html.erb
Created edit page and added a link to the edit page if a puzzle comes back as unsolvable. Also added link to create new puzzle on successful show page.
