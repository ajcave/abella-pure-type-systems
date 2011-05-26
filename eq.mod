module eq.
accumulate tm.

step (abs S M) (abs S' M) :- step S S'.
step (abs S M) (abs S M') :- pi x\ wf x => step (M x) (M' x).
step (app M N) (app M' N) :- step M M'.
step (app M N) (app M N') :- step N N'.
step (app (abs S M) N) (M N) :- wf S, pi x\ wf x => wf (M x), wf N.
step (for S T) (for S' T) :- step S S'.
step (for S T) (for S T') :- pi x\ wf x => step (T x) (T' x).

eq M N :- step M N.
eq T T.
eq T S :- eq S T.
eq T S :- eq T R, wf R, eq R S.