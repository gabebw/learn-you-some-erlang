-module(case_and_if).

-export([help_me/1, beach/1]).

help_me(Animal) ->
  Talk = if Animal == cat  -> "meow";
          Animal == beef -> "mooo";
          Animal == dog  -> "bark";
          Animal == tree -> "bark"; % sigh.
          true -> "fgdadfgna"
        end,
  {Animal, "says " ++ Talk ++ "!"}.

beach(Temperature) ->
  case Temperature of
    {celsius, N} when N >= 20, N =< 45 ->
      'favorable';
    {kelvin, N} when N >= 293, N =< 318 ->
      'scientifically favorable';
    {fahrenheit, N} when N >= 68, N =< 113 ->
      'favorable in the US';
    _ ->
      'avoid beach'
  end.
