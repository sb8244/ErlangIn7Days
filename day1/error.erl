-module(error).
-export([error/1]).

error(success) -> io:fwrite("Success~n");
error({error, Message}) -> io:fwrite("Uh oh: ~s~n", [Message]).