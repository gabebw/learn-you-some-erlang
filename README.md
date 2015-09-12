# Erlang

## Atoms

- lowercase: `atom`, `'whatever@hello'`
- like Ruby symbols, not garbage collected

## Boolean logic

- `not false.`
- `true or false.`
- `5 =:= 5.`
- strict: `=:=``, `=/=`, non-strict: `==` and `/=`
  - strict cares about floats vs ints, for example

## Tuples

- `Point = {10, 4}.`
- can destructure: `{X, Y} = Point.` or `{X, \_} = Point.`

## Lists

- heterogeneous: `[1, {numbers,[4,5,6]}, 5.34]`
- numbers in lists are interpreted as codepoints: `[97, 98, 99]` is `"abc"`
- `[1,2,3] ++ [4,5]`
- `[1, 2] -- [1]`
  - `++` and `--` are right-associative (interpreted right-to-left)
- head: `hd([1])`
- tail: `tl([1, 2])`
- length: `length([1, 2])`
- pattern matching: `[Head|Rest] = [1,2,3,4].`
- concatenation with `|`: `[1| [2,3,4] ] == [1,2,3,4]`
- `|` is the cons operator
- list comprehensions: `[2*N || N <- [1,2,3,4]].`
