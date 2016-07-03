% module Math
-module(math@foreign).
-export([abs/1, acos/1, asin/1, atan/1, atan2/1, ceil/1, cos/1, exp/1, floor/1, trunc/1, log/1, max/1, min/1, pow/1, remainder/1, round/1, sin/1, sqrt/1, tan/1, e/0, ln2/0, ln10/0, log2e/0, log10e/0, pi/0, sqrt1_2/0, sqrt2/0]).

abs(X) -> erlang:abs(X).

acos(X) -> math:acos(X).

asin(X) -> math:asin(X).

atan(X) -> math:atan(X).

atan2(Y) ->
  fun (X) ->
    math:atan2(Y,X)
  end.

ceil(X) when X < 0 ->
    erlang:trunc(X);
ceil(X) ->
    T = erlang:trunc(X),
    case X - T == 0 of
        true -> T;
        false -> T + 1
    end.

cos(X) -> math:cos(X).

exp(X) -> math:exp(X).

floor(X) when X < 0 ->
    T = erlang:trunc(X),
    case X - T == 0 of
        true -> T;
        false -> T - 1
    end;
floor(X) ->
    erlang:trunc(X).


trunc(X) -> erlang:trunc(X).

log(X) -> math:log(X).

max(X) ->
  fun (Y) ->
    erlang:max(X,Y)
  end.

min(X) ->
  fun (Y) ->
    erlang:min(X,Y)
  end.

pow(X) ->
  fun(Y) ->
    math:pow(X,Y)
  end.

remainder(X) ->
  fun (Y) ->
    X rem Y
  end.

round(X) -> erlang:round(X).

sin(X) -> math:sin(X).

sqrt(X) -> math:sqrt(X).

tan(X) -> math:tan(X).

e() -> math:exp(1).

ln2() -> math:log(2).

ln10() -> math:log(10).

log2e() -> math:log2(e()).

log10e() -> math:log10(e()).

pi() -> math:pi().

sqrt1_2() -> math:sqrt(0.5).

sqrt2() -> math:sqrt(2).
