sig cr.
accum_sig tm.

% Parallel reduction
type pr          tm -> tm -> o.
type prn         tm -> tm -> o.
% Complete development
type cd          tm -> tm -> o.
type notlam      tm -> o.