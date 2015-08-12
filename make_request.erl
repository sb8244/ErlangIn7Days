inets:start().
{ok, {{Version, 200, ReasonPhrase}, Headers, Body}} =
      httpc:request("http://www.erlang.org").
Headers.
Body.