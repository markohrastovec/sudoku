# sudoku
We were asking ourselves, if sudoku is always unambiguous.
At one point you have to choose one of possible solutions.

I wrote a program to check where is the point when the solver
has to make a choice, and try one of possible scenarios. If
the choice was wrong, all has to be abandoned to the point of
decision, and tried with another possible option.

It turns out that usually easy sudokus do not reach a point of
such a decision. On the other hand, harder sudokus require to
choose one of promising options, which might lead to unsolvable
end.

There is no doubt the program can be improved or made better, but
I only did it to answer a question about ambiguity.

# TODO

- Output should be nicer.
- Trailing spaces could be omitted when entering lines.
