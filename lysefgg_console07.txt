$ erl
Erlang/OTP 18 [erts-7.3.1] [source] [64-bit] [smp:4:4] [async-threads:10] [hipe] [kernel-poll:false]

Eshell V7.3.1  (abort with ^G)
1> c(kitchen).
{ok,kitchen}
2> Pid = spawn(kitchen, fridge2, [[baking_soda]]).
<0.41.0>
3> Pid ! {self(), {store, milk}},
3> .
* 2: syntax error before: '.'
3> Pid ! {self(), {store, milk}}.
{<0.34.0>,{store,milk}}
4> flush().
Shell got {<0.41.0>,ok}
ok
5> Pid ! {self(), {store, bacon}}.
{<0.34.0>,{store,bacon}}
6> Pid ! {self(), {take, bacon}}. 
{<0.34.0>,{take,bacon}}
7> Pid ! {self(), {take, turkey}}.
{<0.34.0>,{take,turkey}}
8> flush().
Shell got {<0.41.0>,ok}
Shell got {<0.41.0>,{ok,bacon}}
Shell got {<0.41.0>,not_found}
ok
9> c(kitchen).
kitchen.erl:36: syntax error before: Food
error
10> f().
ok
11> Pid = spawn(kitchen, fridge2, [[baking_soda]]).
<0.55.0>
12> kitchen:store(Pid, water).
** exception error: undefined function kitchen:store/2
13> c(kitchen).                                    
{ok,kitchen}
14> f().                                           
ok
15> Pid = spawn(kitchen, fridge2, [[baking_soda]]).
<0.65.0>
16> kitchen:store(Pid, water).                     
ok
17> kitchen:take(Pid, water). 
{ok,water}
18> kitchen:take(Pid, juice).
not_found
19> flush().
ok
20> c(kitchen).                                    
{ok,kitchen}
21> f().                                           
ok
22> Pid = kitchen:start([rhubarb, dog, hotdog]).
<0.77.0>
23> kitchen:take(Pid, dog).
{ok,dog}
24> kitchen:take(Pid, dog).
not_found
25> pid(0,250,0).
<0.250.0>
26> self().
<0.57.0>
27> kitchen:take(pid(0,250,0), dog).

User switch command
 --> k
 --> s
 --> c
Eshell V7.3.1  (abort with ^G)
1> 
User switch command
 --> 
 --> h
  c [nn]            - connect to job
  i [nn]            - interrupt job
  k [nn]            - kill job
  j                 - list all jobs
  s [shell]         - start local shell
  r [node [shell]]  - start remote shell
  q                 - quit erlang
  ? | h             - this message
 --> s
 --> c
Eshell V7.3.1  (abort with ^G)
1> c(kitchen).
{ok,kitchen}
2> kitchen:take2(pid(0,250,0), dog).
timeout
3> 
4> c(multiproc).
{ok,multiproc}
5> self() ! {15, high}, self() ! {7, low}, self() ! {1, low}, self() ! {17, high}.
{17,high}
6> self() ! {25, high}, self() ! {7, low}, self() ! {1, low}, self() ! {17, high}.
{17,high}
7> multiproc:important().
[high,high,high,high,low,low,low,low]
8> multiproc:important().
[]
9> self() ! {25, high}, self() ! {7, low}, self() ! {1, low}, self() ! {17, high}.
{17,high}
10> multiproc:important().                                                      [high,high,low,low]
