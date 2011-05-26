sig tm.

kind tm          type.
kind sort        type.

type abs         tm -> (tm -> tm) -> tm.
type for         tm -> (tm -> tm) -> tm.
type app         tm -> tm -> tm.
type st          sort -> tm.
type star        sort.
type box         sort.

type wf          tm -> o.