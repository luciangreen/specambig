:- module(cases, [title/1, case/3]).
:- use_module('../prolog/specambig').
:- use_module(engine).
title('specambig').
list_g(L) :- rnd_int(0, 4, N), length(L, N), maplist([X]>>rnd_int(1, 5, X), L).
spec_g(S) :- rnd_pick([identity, reverse, msort, dedupe, drop_first, evens, inc], F), rnd_int(1, 3, K), length(S, K), maplist([I-O]>>( list_g(I), fn(F, I, O) ), S).
case(ambiguous, [S], ambiguous) :- spec_g(S).
case(candidates, [S], candidates) :- spec_g(S).
case(split, [Cs, I], split) :- spec_g(S), candidates(S, Cs), list_g(I).
