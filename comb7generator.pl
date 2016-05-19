comb7sample(A,B,C,D,E,F,G):-s(A,B,C,D,E,F,G),printrow(A,B,C,D,E,F,G).

printrow(A,B,C,D,E,F,G) :- 
write(A), write(' '), write(B), write(' '), write(C),
write(' '), write(D), write(' '), write(E), write(' '), write(F),
write(' '), write(G),nl.
%---------------------------------------

s(A,B,C,D,E,F,G):-num(A),num(B),num(C),num(D),num(E),num(F),num(G).

num(1). num(2). num(3). num(4). num(5). num(6). num(7).

run :-
statistics(walltime, [TimeSinceStart | [TimeSinceLastCall]]),
tell('comb7.txt'),
(
	comb7sample(_,_,_,_,_,_,_),
	fail;
	told
),
statistics(walltime, [NewTimeSinceStart | [ExecutionTime]]),
nl, write('Tempo: '), write(ExecutionTime), write(' ms.'), nl.