-module(functions).

%% Export functions, with specified arity
-export([head/1, second/1, same/2, wrong_age/1, help_me/1]).

head([H|_]) -> H.

second([_,S|_]) -> S.

same(X,X) -> true;
same(_,_) -> false.

%% ; is "or" in guards
%% , is "and" in guards
wrong_age(X) when X < 16; X > 104 ->
  true;
wrong_age(_) ->
  false.

help_me(Animal) ->
  Talk = if Animal == cat  -> "meow";
          Animal == beef -> "mooo";
          Animal == dog  -> "bark";
          Animal == tree -> "bark";
          true -> "fgdadfgna"
        end,
  {Animal, "says " ++ Talk ++ "!"}.
