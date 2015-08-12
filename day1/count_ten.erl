-module(count_ten).
-export([count_ten/0]).

count_ten() -> count_ten_r(1).
count_ten_r(10) -> 10;
count_ten_r(Count) ->
  io:fwrite("~w~n", [Count]),
  count_ten_r(1 + Count).