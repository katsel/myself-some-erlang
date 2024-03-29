-module(recursive).
-export([fac/1, len/1, tail_fac/1, tail_len/1, duplicate/2, tail_duplicate/2,
        reverse/1, tail_reverse/1, sublist/2, tail_sublist/2,
        tail_sublist_2/2, zip/2, lenient_zip/2, noomit_zip/2, quicksort/1,
        lc_quicksort/1]).

%% basic recursive factorial function
fac(N) when N == 0 -> 1;
fac(N) when N >  0 -> N * fac(N-1).

%% find the length of a list
len([]) -> 0;
len([_|T]) -> 1 + len(T).

%% tail recursive version of fac/1
tail_fac(N) -> tail_fac(N, 1).

tail_fac(0, Acc) -> Acc;
%% why not: tail_fac(N, Acc) -> tail_fac(N-1, N*Acc).
tail_fac(N, Acc) when N > 0 -> tail_fac(N-1, N*Acc).

%% tail recursive version of len/1
tail_len(L) -> tail_len(L, 0).

tail_len([], Acc) -> Acc;
tail_len([_|L], Acc) -> tail_len(L, 1 + Acc).

%% duplicates Term N times
duplicate(0, _) ->
    [];
duplicate(N, Term) when N > 0 ->
    [Term | duplicate(N-1, Term)].

%% tail recursive version of duplicate/1
tail_duplicate(N, Term) ->
    tail_duplicate(N, Term, []).

tail_duplicate(0, _, List) ->
    List;
tail_duplicate(N, Term, List) when N > 0 ->
    tail_duplicate(N-1, Term, [Term | List]).

%% invert order of a list
reverse([]) -> [];
reverse([H|T]) -> reverse(T) ++ [H].

%% tail recursive version of reverse/1
tail_reverse(List) ->
    tail_reverse(List, []).

tail_reverse([], Acc) -> Acc;
tail_reverse([H|T], Acc) -> tail_reverse(T, [H|Acc]).

%% return the first N elements of a list
sublist(_, 0) -> [];
sublist([], _) -> [];
sublist([H|T], N) when N > 0 -> [H|sublist(T, N-1)].

%% tail recursive version of sublist/2
tail_sublist(List, N) -> reverse(tail_sublist(List, N, [])).

tail_sublist(_, 0, SubList) -> SubList;
tail_sublist([], _, SubList) -> SubList;
tail_sublist([Head|Tail], N, SubList) when N > 0 ->
    tail_sublist(Tail, N-1, [Head|SubList]).

%% own tail-recursive sublist implementation without reverse()
tail_sublist_2(List, N) -> tail_sublist_2(List, N, []).

tail_sublist_2(_, 0, SubList) -> SubList;
tail_sublist_2([], _, SubList) -> SubList;
tail_sublist_2([Head|Tail], N, SubList) when N > 0 ->
    tail_sublist_2(Tail, N-1, SubList ++ [Head]).

%% Take two lists [A] and [B] and return a list of tuples
%% with the form [{A, B}]. Both lists need to be of the same length.
zip([], []) -> [];
zip([X|Xs], [Y|Ys]) -> [{X,Y}|zip(Xs, Ys)].

%% same as zip/2, but lists can vary in length (omit additional elements)
lenient_zip([],_) -> [];
lenient_zip(_,[]) -> [];
lenient_zip([X|Xs], [Y|Ys]) -> [{X,Y}|lenient_zip(Xs, Ys)].

%% same as zip/2, but lists can vary in length (fill missing elements with
%% an empty list)
noomit_zip([], []) -> [];
noomit_zip([], [Y|Ys]) -> [{[],Y}|noomit_zip([], Ys)];
noomit_zip([X|Xs], []) -> [{X,[]}|noomit_zip(Xs, [])];
noomit_zip([X|Xs], [Y|Ys]) -> [{X,Y}|noomit_zip(Xs, Ys)].

%% tail recursive version of zip/2

%% tail recursive version of lenient_zip/2

%% tail recursive version of noomit_zip/2

%% basic quicksort function
quicksort([]) -> [];
quicksort([Pivot|Rest]) ->
    {Smaller, Larger} = partition(Pivot, Rest, [], []),
    quicksort(Smaller) ++ [Pivot] ++ quicksort(Larger).

partition(_, [], Smaller, Larger) -> {Smaller, Larger};
partition(Pivot, [H|T], Smaller, Larger) ->
    if H =< Pivot -> partition(Pivot, T, [H|Smaller], Larger);
       H >  Pivot -> partition(Pivot, T, Smaller, [H|Larger])
    end.

% quicksort with list comprehensions rather than a partition function
lc_quicksort([]) -> [];
lc_quicksort([Pivot|Rest]) ->
    lc_quicksort([Smaller || Smaller <- Rest, Smaller =< Pivot])
    ++ [Pivot] ++
    lc_quicksort([Larger || Larger <- Rest, Larger > Pivot]).
