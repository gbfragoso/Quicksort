comb8sample(A,B,C,D,E,F,G,H):-s(A,B,C,D,E,F,G,H),printrow(A,B,C,D,E,F,G,H).

printrow(A,B,C,D,E,F,G,H) :- 
write(A), write(' '), write(B), write(' '), write(C),
write(' '), write(D), write(' '), write(E), write(' '), write(F),
write(' '), write(G), write(' '), write(H),
nl.
%---------------------------------------

s(A,B,C,D,E,F,G,H):-num(A),num(B),num(C),num(D),num(E),num(F),num(G),num(H).

num(1). num(2). num(3). num(4). num(5). num(6). num(7). num(8).

run :-
statistics(walltime, [TimeSinceStart | [TimeSinceLastCall]]),
tell('comb8.txt'),
(
	comb8sample(_,_,_,_,_,_,_,_),
	fail;
	told
),
statistics(walltime, [NewTimeSinceStart | [ExecutionTime]]),
nl, write('Tempo: '), write(ExecutionTime), write(' ms.'), nl.