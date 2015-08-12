-module(matrix).
-export([columnize/1,diags/1]).

% This is really transpose but makes tictac prettier this way
columnize([[] | _]) -> [];
columnize(M) -> [lists:map(fun hd/1, M) | columnize(lists:map(fun tl/1, M))].

diags(M) ->
  LeftDiag = lists:foldl(fun(El, Diag) -> [lists:nth(length(Diag) + 1, El) | Diag] end, [], M),
  RightDiag = lists:foldl(fun(El, Diag) -> [lists:nth(length(El) - length(Diag), El) | Diag] end, [], M),
  [LeftDiag | [RightDiag]].