-module(tictac).
-export([winner/1]).

winner(Rows) ->
  PossibleWinningLists = Rows ++ matrix:columnize(Rows) ++ matrix:diags(Rows),
  case winnerInSet(PossibleWinningLists) of
    tie -> % If we have a tie and null spaces, there are moves left
      case lists:any( fun(SubList) -> lists:member(null, SubList) end, Rows ) of
        true -> more_moves;
        false -> tie
      end;
    Result -> Result
  end.

winnerInSet([]) -> tie;
winnerInSet([List | Tail]) ->
  case winnerInList(List) of
    true -> hd(List); % Break recursion and return the winner
    false -> winnerInSet(Tail) % Recurse into finding the winner
  end.

winnerInList([_Winner]) -> true;
winnerInList([Head, Next | Tail]) ->
  if
    Head == Next -> winnerInList([Next | Tail]);
    true -> false
  end.
