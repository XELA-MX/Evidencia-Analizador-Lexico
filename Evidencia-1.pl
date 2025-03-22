% Creación de transiciones para el automata

% E 0 1 2 

% Q0
transition(q0,0,q0).
transition(q0,1,q1).
transition(q0,2,q0).

% Q1
transition(q1,0,q10).
transition(q1,1,q11).
transition(q1,2,q0).

% q11
transition(q11,0,q110).
transition(q11,1,q11).
transition(q11,2,q112).

% q110
% q9 is the non accepted state
transition(q110,0,q0).
transition(q110,1,q9).
transition(q110,2,q0).

% q112
% q9 is the non accepted state
transition(q112,0,q0).
transition(q112,1,q0).
transition(q112,2,q9).

% q10
transition(q10,0,q0).
transition(q10,1,q101).
transition(q10,2,q0).

% q101
% q9 is the non accepted state
transition(q101,0,q0).
transition(q101,1,q9).
transition(q101,2,q9).

% Estados finales (todos excepto q9)
final_state(q0).
final_state(q1).
final_state(q11).
final_state(q110).
final_state(q112).
final_state(q10).
final_state(q101).

% Reglas para validar cadenas
automata(List) :-
    automata(List, q0).  % Inicia en el estado q0

% Caso base: Cadena vacía, estado actual debe ser final
automata([], State) :-
    final_state(State).

% Transición recursiva por cada símbolo
automata([Symbol | Rest], State) :-
    transition(State, Symbol, NextState),
    automata(Rest, NextState).