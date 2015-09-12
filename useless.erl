%% Define a module named "useless"
-module(useless).


%% Export functions, with specified arity
-export([add/2, greet/2, greet_and_add_two/1]).
%% Or for testing, this is nice:
%% -compile(export_all).

add(A,B) ->
  A + B.

%% Shows greetings.
%% io:format/1 is the standard function used to output text.

greet(male, Name) ->
  io:format("Hello, Mr. ~s!", [Name]);
greet(female, Name) ->
  io:format("Hello, Mrs. ~s!", [Name]);
greet(_, Name) ->
  io:format("Hello, ~s!", [Name]).

greet_and_add_two(X) ->
  hello(),
  add(X,2).
