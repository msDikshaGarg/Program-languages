%Question 1: max in a list using recursion
maxFunc([X], X).
maxFunc([ListH|ListT],ListH):- maxFunc(ListT,X), ListH >= X.
maxFunc([ListH|ListT],X):- maxFunc(ListT,X), X > ListH.

%Question 2: True if intersection of list is empty
checkFunc([],[],[]).
checkFunc(_,[], []).
checkFunc(ListFull, [ListH|ListT], Ans):-
    \+(member(ListH, ListFull)), checkFunc(ListFull, ListT, Ans).
checkFunc(ListFull, [ListH|ListT], [ListH|Ans]):-
    member(ListH, ListFull), checkFunc(ListFull, ListT, []).

%Question 3: union of 2 lists
unionFunc([], [], []).
unionFunc(ListFull, [], ListFull).
unionFunc(ListFull, [ListH|ListT], [ListH|Ans]):-
    \+(member(ListH, ListFull)), unionFunc(ListFull, ListT, Ans).
unionFunc(ListFull, [ListH|ListT], Ans):-
    member(ListH, ListFull), unionFunc(ListFull, ListT, Ans).

%Question 4: Last element of list
lastFunc([X], X).
lastFunc([_|ListT], Y) :- lastFunc(ListT, Y).

%Question 5: combined elements of list
tupleFunc([],[],[]).
tupleFunc(_, [], []).
tupleFunc([], _, []).
tupleFunc(ListFull, [ListH|ListT], X):-
    tupleHelper(ListFull, [ListH|ListT], X, ListFull).
tupleHelper([], [_|Y], Ans, ListFull2) :- tupleFunc(ListFull2, Y, Ans).
tupleHelper([ListH1|ListT1], [ListH|ListT], [(ListH1,ListH)|Ans], ListFull2):-
    tupleHelper(ListT1, [ListH|ListT], Ans, ListFull2).
