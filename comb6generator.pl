comb6sample(A,B,C,D,E,F):-s(A,B,C,D,E,F),printrow(A,B,C,D,E,F).

printrow(A,B,C,D,E,F) :- 
write(A), write(' '), write(B), write(' '), write(C),
write(' '), write(D), write(' '), write(E), write(' '), write(F),
nl.
%---------------------------------------

s(A,B,C,D,E,F):-num(A),num(B),num(C),num(D),num(E),num(F).

num(1). num(2). num(3). num(4). num(5). num(6).

run :-
statistics(walltime, [TimeSinceStart | [TimeSinceLastCall]]),
tell('comb6.txt'), 
(
	comb6sample(_,_,_,_,_,_),
	fail;
	told
),
statistics(walltime, [NewTimeSinceStart | [ExecutionTime]]),
nl, write('Tempo: '), write(ExecutionTime), write(' ms.'), nl.