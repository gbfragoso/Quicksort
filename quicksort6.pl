quicksort(List,Sorted):- q_sort(List,[],Sorted).
q_sort([],Acc,Acc).
q_sort([H|T],Acc,Sorted):- pivoting(H,T,L1,L2), q_sort(L1,Acc,Sorted1),q_sort(L2,[H|Sorted1],Sorted).

pivoting(H,[],[],[]).
pivoting(H,[X|T],[X|L],G):- X>H,pivoting(H,T,L,G).
pivoting(H,[X|T],L,[X|G]):- X=<H,pivoting(H,T,L,G).

check :-
	%X = 'comb6.txt',
	X = 'comb6.txt',
	see(X),
	statistics(walltime, [TimeSinceStart | [TimeSinceLastCall]]),
	loop(46656),
	statistics(walltime, [NewTimeSinceStart | [ExecutionTime]]),
	nl, write('Tempo: '), write(ExecutionTime), write(' ms.'), nl,
	!,seen.

loop(0).
loop(N):- N>0,
get_char(T1),
get_char(T2),
get_char(T3),
get_char(T4),
get_char(T5),
get_char(T6),
get_char(T7),
get_char(T8),
get_char(T9),
get_char(T10),
get_char(T11),
get_char(T12),
atom_number(T1,A1),
atom_number(T3,A2),
atom_number(T5,A3),
atom_number(T7,A4),
atom_number(T9,A5),
atom_number(T11,A6),
quicksort([A1,A2,A3,A4,A5,A6], X),
%quicksort([A1,A2,A3,A4,A5,A6],X),
M is N-1, loop(M).