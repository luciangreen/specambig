% specambig: find specs that more than one algorithm could satisfy, and ask the question that
% settles it. A spec is a list of Input-Output examples; candidates are the simple list
% functions that pass them all. If candidates disagree somewhere, the spec is ambiguous, and
% the question is the input that splits the candidates most evenly.
%?- candidates([[2,1]-[1,2]], C).            % C = [reverse, msort, dedupe]: all three pass
%?- ambiguous([[2,1]-[1,2]], Q).             % Q = ask([1,1]): reverse, msort and dedupe all differ there
%?- ambiguous([[2,1]-[1,2], [1,1]-[1,1]], Q).  % Q = ask(...) or clear(F)
:- module(specambig, [fn/3, candidates/2, inputs/1, ambiguous/2, split/3, answer/4]).
:- use_module(library(lists)).
:- use_module(library(apply)).

fn(identity, L, L).
fn(reverse, L, R) :- reverse(L, R).
fn(msort, L, R) :- msort(L, R).
fn(dedupe, L, R) :- sort(L, R).
fn(drop_first, L, R) :- ( L = [_|T] -> R = T ; R = [] ).
fn(evens, L, R) :- include([X]>>(X mod 2 =:= 0), L, R).
fn(inc, L, R) :- maplist([X, Y]>>(Y is X + 1), L, R).

candidates(Spec, Cs) :- findall(F, ( fn(F, _, _), forall(member(I-O, Spec), fn(F, I, O)) ), C0), sort(C0, S), findall(F, ( member(F, [identity, reverse, msort, dedupe, drop_first, evens, inc]), memberchk(F, S) ), Cs).

inputs(I) :- between(0, 3, N), length(I, N), maplist([X]>>between(1, 3, X), I).

% split(+Candidates, +Input, -Groups): the candidates grouped by the output they give.
split(Cs, I, Gs) :- findall(O-F, ( member(F, Cs), fn(F, I, O) ), P), msort(P, S), group(S, Gs).
group([], []).
group([O-F|R], [O-[F|Fs]|G]) :- take(O, R, Fs, R1), group(R1, G).
take(O, [O2-F|R], [F|Fs], R1) :- O2 == O, !, take(O, R, Fs, R1).
take(_, R, [], R).

% ambiguous(+Spec, -Result): clear(F) if every candidate agrees everywhere (F the first), none if no candidate,
% or ask(Input): the input whose largest group of agreeing candidates is smallest (first such).
ambiguous(Spec, R) :- candidates(Spec, Cs),
    (   Cs == [] -> R = none
    ;   findall(Big-I, ( inputs(I), split(Cs, I, Gs), length(Gs, NG), NG > 1, maplist([_-Fs, K]>>length(Fs, K), Gs, Ks), max_list(Ks, Big) ), Qs),
        ( Qs == [] -> Cs = [F|_], R = clear(F) ; keysort(Qs, [_-I|_]), R = ask(I) ) ).

% answer(+Spec, +Input, +Truth, -Spec2): add the answer a given true function would give.
answer(Spec, I, F, [I-O|Spec]) :- fn(F, I, O).
