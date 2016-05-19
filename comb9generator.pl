comb5sample(A,B,C,D,E,F,G,H,I):-s(A,B,C,D,E,F,G,H,I),printrow(A,B,C,D,E,F,G,H,I).

printrow(A,B,C,D,E,F,G,H,I) :- 
write(' '), write(A), write(' '), write(B), write(' '), write(C),
write(' '), write(D), write(' '), write(E), write(' '), write(F),
write(' '), write(G), write(' '), write(H), write(' '), write(I),
nl.
%---------------------------------------

s(A,B,C,D,E,F,G,H,I):-num(A),num(B),num(C),num(D),num(E),num(F),num(G),num(H),num(I).

num(1). num(2). num(3). num(4). num(5). num(6). num(7). num(8). num(9).

run :-
statistics(walltime, [TimeSinceStart | [TimeSinceLastCall]]),
tell('comb4.txt'),write('Combinations n=4'),nl, 
(
	comb9sample(_,_,_,_,_,_,_,_,_),
	fail;
	told
),
statistics(walltime, [NewTimeSinceStart | [ExecutionTime]]),
nl, write('Tempo: '), write(ExecutionTime), write(' ms.'), nl.