XWinRow = [
  [x,x,x],
  [o,o,x],
  [o,x,o]
].
XWinCol = [
  [x,o,o],
  [x,o,x],
  [x,x,o]
].
OWinRow = [
  [x,x,o],
  [o,x,x],
  [o,o,o]
].
OWinCol = [
  [o,x,x],
  [o,x,o],
  [o,o,x]
].
Tie = [
  [x,o,x],
  [o,x,o],
  [o,x,o]
].
MoreMoves = [
  [x,o,o],
  [o,x,o],
  [x,null,null]
].
XWinLeftDiag = [
  [x,o,o],
  [o,x,o],
  [x,o,x]
].
OWinRightDiag = [
  [x,o,o],
  [x,o,o],
  [o,x,x]
].

c(matrix).
c(tictac).

tictac:winner(XWinRow) == x.
tictac:winner(OWinRow) == o.
tictac:winner(Tie) == tie.
tictac:winner(MoreMoves) == more_moves.
tictac:winner(XWinCol) == x.
tictac:winner(OWinCol) == o.
tictac:winner(XWinLeftDiag) == x.
tictac:winner(OWinRightDiag) == o.
