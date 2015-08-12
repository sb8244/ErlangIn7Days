-module(find).
-export([find/2]).

% list: [{key, "value"}]
find([], _) -> null;
find([Head | Tail], Lookup) ->
  { Key, Value } = Head,
  if
    Key == Lookup -> Value;
    true -> find(Tail, Lookup)
  end.

% c(find).
% List = [{a, 1}, {b, 2}].
% find:find(List, a). % 1
% find:find(List, b). % 2
% find:find(List, c). % null