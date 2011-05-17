module pts.

axiom star box.
rule star star star.
rule star box box.
rule box star star.
rule box box box.

of (st S1) (st S2) :- axiom S1 S2.
of (for U T) (st S3) :- rule S1 S2 S3, of U (st S1), pi x\ (of x U => of (T x) (st S2)). 
of (abs U M) (for U T) :- rule S1 S2 S3, of U (st S1), pi x\ (of x U => of (T x) (st S2)), pi x\ (of x U => of (M x) (T x)).
of (app M N) (T N) :- of M (for U T), of N U.
of M T :- eq T U, of T (st S), of M U.

step (abs S M) (abs S' M) :- step S S'.
step (abs S M) (abs S M') :- pi x\ step (M x) (M' x).
step (app M N) (app M' N) :- step M M'.
step (app M N) (app M N') :- step N N'.
step (app (abs S M) N) (M N).
step (for S T) (for S' T) :- step S S'.
step (for S T) (for S T') :- pi x\ step (T x) (T' x).

eq M N :- step M N.

eq T T.
eq T S :- eq S T.
eq T S :- eq T R, eq R S.

mstep N N.
mstep M N :- step M N', mstep N' N.

pr (abs U M) (abs U' M') :- pr U U', pi x\ pr x x => pr (M x) (M' x).
pr (for U T) (for U' T') :- pr U U', pi x\ pr x x => pr (T x) (T' x).
pr (app M N) (app M' N') :- pr M M', pr N N'.
pr (app (abs U M) N) (M' N') :- pr N N', pi x\ pr x x => pr (M x) (M' x).
pr (st S) (st S).

notlam (app M N).
notlam (for U T).
notlam (st S).

cd (abs U M) (abs U' M') :- cd U U', pi x\ notlam x => cd x x => cd (M x) (M' x).
cd (for U T) (for U' T') :- cd U U', pi x\ notlam x => cd x x => cd (T x) (T' x).
cd (app M N) (app M' N') :- notlam M, cd M M', cd N N'.
cd (app (abs U M) N) (M' N') :- cd N N', pi x\ notlam x => cd x x => cd (M x) (M' x).
cd (st S) (st S).