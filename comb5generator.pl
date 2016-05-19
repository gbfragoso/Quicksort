comb5sample(A,B,C,D,E):-s(A,B,C,D,E),printrow(A,B,C,D,E).

printrow(A,B,C,D,E) :- 
write(A), write(' '), write(B), write(' '), write(C),
write(' '), write(D), write(' '), write(E),nl.
%---------------------------------------

s(A,B,C,D,E):-num(A),num(B),num(C),num(D),num(E).

num(1). num(2). num(3). num(4). num(5).

run :-
statistics(walltime, [TimeSinceStart | [TimeSinceLastCall]]),
tell('comb5.txt'), 
(
	comb5sample(_,_,_,_,_),
	fail;
	told
),
statistics(walltime, [NewTimeSinceStart | [ExecutionTime]]),
nl, write('Tempo: '), write(ExecutionTime), write(' ms.'), nl.