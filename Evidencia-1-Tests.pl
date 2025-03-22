?- automata([0,1,1,2]).
true.

?- automata([0,1,1,1,0,1,2]).
false.


?- automata([0,1,1,1,1,2]).
true.


?- automata([0,1,2]).
true.


?- automata([1,1,0]).
true.   


?- automata([1,2]).
true.


?- automata([1,1,2,2]).
false.


?- automata([1,0,1,1]).
false.