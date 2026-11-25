# specambig

find specs that more than one algorithm could satisfy, and ask the question that settles it. A spec is a list of Input-Output examples; candidates are the simple list functions that pass them all. If candidates disagree somewhere, the spec is ambiguous, and the question is the input that splits the candidates most evenly.

## Use

```prolog
?- use_module(prolog/specambig).
?- candidates([[2,1]-[1,2]], C).            % C = [reverse, msort, dedupe]: all three pass
?- ambiguous([[2,1]-[1,2]], Q).             % Q = ask([1,1,2]): reverse gives [2,1,1], msort [1,1,2], dedupe [1,2]
?- ambiguous([[2,1]-[1,2], [1,1]-[1,1]], Q).  % Q = ask(...) or clear(F)
```

## Proofs

`proofs/theorems.pl` proves 4 theorems by exhaustion: each one is checked for every case in a finite domain that covers every branch of the definitions. specs of one or two examples from every true function on short lists over 1..3.

1. Every candidate passes every example.
2. clear means every candidate gives the same output on every input checked.
3. The question separates at least two candidates.
4. Answering the question always removes at least one candidate, whichever candidate is the truth.

```sh
swipl -g main -t halt proofs/theorems.pl
```

## 200 inputs and outputs

`io/ios.txt` lists 200 inputs and outputs from real runs, and `io/ios.pl` has the same as Prolog facts. The inputs come from a fixed seed (`io/cases.pl`). `swipl -g check -t halt io/run.pl` runs them again. It fails if any output changes, or if a predicate doesn't confirm its own recorded output, which checks steadfastness. GitHub Actions runs the proofs and the examples on every push, and records the examples on the first push.

Licence: BSD-3-Clause.
