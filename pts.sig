sig pts.

kind tm          type.
kind sort        type.

type abs         tm -> (tm -> tm) -> tm.
type for         tm -> (tm -> tm) -> tm.
type app         tm -> tm -> tm.
type st          sort -> tm.
type star        sort.
type box         sort.

type of          tm -> tm -> o.
type step        tm -> tm -> o.
type mstep       tm -> tm -> o.
type eq          tm -> tm -> o.

type axiom       sort -> sort -> o.
type rule        sort -> sort -> sort -> o.
