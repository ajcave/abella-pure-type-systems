module cr.
accumulate tm.

pr (abs U M) (abs U' M') :- pr U U', pi x\ pr x x => pr (M x) (M' x).
pr (for U T) (for U' T') :- pr U U', pi x\ pr x x => pr (T x) (T' x).
pr (app M N) (app M' N') :- pr M M', pr N N'.
pr (app (abs U M) N) (M' N') :- pr N N', pi x\ pr x x => pr (M x) (M' x).
pr (st S) (st S).

prn N N.
prn M N :- prn M M', pr M' N.

notlam (app M N).
notlam (for U T).
notlam (st S).

cd (abs U M) (abs U' M') :- cd U U', pi x\ notlam x => cd x x => cd (M x) (M' x).
cd (for U T) (for U' T') :- cd U U', pi x\ notlam x => cd x x => cd (T x) (T' x).
cd (app M N) (app M' N') :- notlam M, cd M M', cd N N'.
cd (app (abs U M) N) (M' N') :- cd N N', pi x\ notlam x => cd x x => cd (M x) (M' x).
cd (st S) (st S).