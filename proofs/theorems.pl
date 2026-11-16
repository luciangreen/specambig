% Theorems, proved by exhaustion. Run: swipl -g main -t halt proofs/theorems.pl
:- module(theorems, [main/0]).
:- use_module(prove).
:- discontiguous theorem/1.
:- use_module(library(lists)).
:- use_module(library(apply)).
main :- prove_all(theorems).
:- use_module('../prolog/specambig').

% Domain: specs of one or two examples from every true function on short lists over 1..3.
fname(F) :- member(F, [identity, reverse, msort, dedupe, drop_first, evens, inc]).
short(I) :- between(0, 2, N), length(I, N), maplist([X]>>between(1, 3, X), I).
spec(S) :- fname(F), short(I1), fn(F, I1, O1), ( S = [I1-O1] ; short(I2), I2 @> I1, fn(F, I2, O2), S = [I1-O1, I2-O2] ).

% 1. Every candidate passes every example.
theorem(candidates_pass) :- forall(( spec(S), candidates(S, Cs), member(F, Cs) ), forall(member(I-O, S), fn(F, I, O))).

% 2. clear means every candidate gives the same output on every input checked.
theorem(clear_means_agreement) :- forall(( spec(S), ambiguous(S, clear(_)), candidates(S, Cs) ), forall(inputs(I), ( split(Cs, I, Gs), length(Gs, 1) ))).

% 3. The question separates at least two candidates.
theorem(questions_separate) :- forall(( spec(S), ambiguous(S, ask(I)), candidates(S, Cs) ), ( split(Cs, I, Gs), length(Gs, N), N >= 2 )).

% 4. Answering the question always removes at least one candidate, whichever candidate is the truth.
theorem(answers_make_progress) :- forall(( spec(S), ambiguous(S, ask(I)), candidates(S, Cs), member(F, Cs) ), ( answer(S, I, F, S2), candidates(S2, Cs2), length(Cs, A), length(Cs2, B), B < A, memberchk(F, Cs2) )).
