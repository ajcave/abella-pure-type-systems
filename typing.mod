module typing.
accumulate tm.
accumulate eq.

axiom star box.
rule star star star.
rule star box box.
rule box star star.
rule box box box.

of (st S1) (st S2) :- axiom S1 S2.

of (for U T) (st S3) :-
 rule S1 S2 S3,
 of U (st S1),
 pi x\ (wf x => of x U => of (T x) (st S2)). 

of (abs U M) (for U T) :-
 rule S1 S2 S3, of U (st S1),
 pi x\ (wf x => of x U => of (T x) (st S2)),
 pi x\ (wf x => of x U => of (M x) (T x)).

of (app M N) (T N) :- of M (for U T), of N U.

of M T :- eq T U, of T (st S), of M U.
