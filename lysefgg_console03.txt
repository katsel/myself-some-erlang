$ erl
Erlang/OTP 18 [erts-7.3.1] [source] [64-bit] [smp:4:4] [async-threads:10] [hipe] [kernel-poll:false]

Eshell V7.3.1  (abort with ^G)
1> cd("workspace/erlang")
1> .
/home/ktr/workspace/erlang
ok
2> c(hhfuns).
{ok,hhfuns}
3> hhfuns:add(fun hhfuns:one/0, fun hhfuns:two/0).
3
4> c(hhfuns).                                     
{ok,hhfuns}
5> L = [1,2,3,4,5].
[1,2,3,4,5]
6> hhfuns:map(fun hhfuns:incr/1, L).
[2,3,4,5,6]
7> hhfuns:map(fun hhfuns:decr/1, L).
[2,3,4,5,6]
8> c(hhfuns).                       
{ok,hhfuns}
9> hhfuns:map(fun hhfuns:decr/1, L).
[0,1,2,3,4]
10> %% anonymous functions
10> Fn = fun() -> a end.
#Fun<erl_eval.20.50752066>
11> Fn().
a
12> hhfuns:map(fun(X) -> X + 1 end, L).
[2,3,4,5,6]
13> hhfuns:map(fun(X) -> X - 1 end, L).
[0,1,2,3,4]
14> hhfuns:map(fun(X) -> X * X end, L).
[1,4,9,16,25]
15> PrepareAlarm = fun(Room) -> io:format("Alarm set in ~s.~n", [Room]),
15> fun() -> io:format("Alarm tripped in ~s! Call Batman!~n",[Room]) end     
15> end.
#Fun<erl_eval.6.50752066>
16> AlarmReady = PrepareAlarm("bathroom").
Alarm set in bathroom.
#Fun<erl_eval.20.50752066>
17> AlarmReady.
#Fun<erl_eval.20.50752066>
18> AlarmReady().
Alarm tripped in bathroom! Call Batman!
ok
19> AlarmReady().
Alarm tripped in bathroom! Call Batman!
ok
20> a() -> 
20> Secret = "pony",
20> fun() -> Secret end.
* 1: syntax error before: '->'
20> fun() -> Secret end.
* 1: variable 'Secret' is unbound
21> .
* 1: syntax error before: '.'
21> a() -> Secret = "pony", 
21> fun() -> Secret end.
* 1: syntax error before: '->'
21> a
21> .
a
22> c(hhfuns).
{ok,hhfuns}
23> hhfuns:b(hhfuns:a()).
"a/0's password is pony"
24> hhfuns:b(hhfuns:one()).
** exception error: bad function 1
     in function  hhfuns:b/1 (hhfuns.erl, line 29)
25> math:pow(5,2).
25.0
26> Base = 2.
2
27> PowerOfTwo = fun(X) -> math:pow(Base, X) end.
#Fun<erl_eval.6.50752066>
28> hhfuns:map(PowerOfTwo, [1,2,3,4,5,6,7,8,9,34,32,47]).
[2.0,4.0,8.0,16.0,32.0,64.0,128.0,256.0,512.0,17179869184.0,
 4294967296.0,140737488355328.0]
29> c(hhfuns).                                           
hhfuns.erl:44: syntax error before: '|'
hhfuns.erl:39: function old_men/2 undefined
error
30> c(hhfuns).
hhfuns.erl:44: syntax error before: 
hhfuns.erl:39: function old_men/2 undefined
error
31> c(hhfuns).
hhfuns.erl:44: syntax error before: 
hhfuns.erl:39: function old_men/2 undefined
error
32> c(hhfuns).
{ok,hhfuns}
33> hhfuns:even([1,2,3,4,5,6,7,8,9]).
[2,4,6,8]
34> 

44> c(hhfuns).
{ok,hhfuns}
45> Numbers = lists:seq(1, 10).
[1,2,3,4,5,6,7,8,9,10]
47> hhfuns:filter(fun(X) -> X rem 2 == 0 end, Numbers).
[2,4,6,8,10]
48> People = [{male, 45}, {female, 67}, {male, 66}, {female, 12}, {unknown, 174}, {male, 74}].
[{male,45},
 {female,67},
 {male,66},
 {female,12},
 {unknown,174},
 {male,74}]
49> hhfuns:filter(fun({Gender, Age}) -> Gender == male andalso Age > 60 end, People).
[{male,66},{male,74}]

61> c(hhfuns).
{ok,hhfuns}
62> hhfuns:max([11,2,5,7,1,8,0]).
11
63> hhfuns:max([11,2,5,7,1,8,0,12]).
12
64> hhfuns:min([11,2,5,7,1,8,0,12]).
0

66> c(hhfuns).
{ok,hhfuns}
67> [H|T] = [1,7,3,5,9,0,2,3].
[1,7,3,5,9,0,2,3]
68> H
68> .
1
69> T.
[7,3,5,9,0,2,3]
70> hhfuns:fold(fun(A,B) when A > B -> A; (_,B) -> B end, H, T).
9
71> hhfuns:fold(fun(A,B) when A < B -> A; (_,B) -> B end, H, T).
0

73> hhfuns:fold(fun(A,B) -> A + B end, 0, T).
29
