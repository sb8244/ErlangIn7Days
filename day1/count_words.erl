-module(count_words).
-export([count/1]).
-export([count2/1]).

% From http://carlosbecker.com/posts/seven-languages-in-seven-weeks-erlang/
list_length([]) -> 0;
list_length(Str) ->
  [_Head | Tail] = Str,
  1 + list_length(Tail).
count([]) -> 0;
count(Word) ->
  Spaces = re:split(Word, " "),
  list_length(Spaces).

% From Me - Trick is to handle the fact that 1 word with no spaces is 1 word
count2([]) -> 0;
count2(Word) ->
  1 + count2_r(Word).
count2_r(Word) ->
  [Head | Tail] = Word,
  if
    Head == 32 ->
      1 + count2(Tail);
    true ->
      0 + count2(Tail)
  end.