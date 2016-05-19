comb4sample(A,B,C,D):-s(A,B,C,D),printrow(A,B,C,D).

printrow(A,B,C,D) :- 
write(' '), write(A), write(' '), write(B), write(' '), write(C), write(' '), write(D),
nl.
%---------------------------------------

s(A,B,C,D):-num(A),num(B),num(C),num(D).

num(1). num(2). num(3). num(4).

run :-
statistics(walltime, [TimeSinceStart | [TimeSinceLastCall]]),
tell('comb4.txt'),write('Combinations n=4'),nl, 
(
	comb4sample(_,_,_,_),
	fail;
	told
),
statistics(walltime, [NewTimeSinceStart | [ExecutionTime]]),
nl, write('Tempo: '), write(ExecutionTime), write(' ms.'), nl.