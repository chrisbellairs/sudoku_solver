Rails app generated alongside a Postgres database.

Generated puzzle model with a column for each puzzle cell.

Generated puzzles controller.

Opted for just the one class of puzzle. Considered also creating a puzzle_solver class for the sake of single responsibility, but felt the application was simple enough that it would not take much effort to seperate the tasks in the future if needed.

Created routes index, new, create and show routes for puzzles.

Built the index view containing the puzzle input form. Used bootsrap for basic styling. Used some custom css to size the puzzle and remove chrome input field styling.

Added code to puzzle controller to create new puzzle instance when form is submitted and display on show page. Created a private puzzle_params method the prevent SQL Injection.


