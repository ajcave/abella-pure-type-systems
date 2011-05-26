module tm.

wf (st S).
wf (abs U M) :- wf U, pi x\ wf x => wf (M x).
wf (for U T) :- wf U, pi x\ wf x => wf (T x).
wf (app M N) :- wf M, wf N.