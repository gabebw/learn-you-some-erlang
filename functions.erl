-module(functions).

%% Export functions, with specified arity
-export([head/1, second/1]).

head([H|_]) -> H.

second([_,S|_]) -> S.

