53> F = fun() -> 2+2 end.                 
#Fun<erl_eval.20.50752066>
54> spawn(F).
<0.161.0>
55> spawn(fun() -> io:format("~p~n",[2+2]) end).
4
<0.163.0>
56> spawn(fun() -> io:format("~p~n",[2+2]) end).
4
<0.165.0>
57> G = fun(X) -> timer:sleep(10), io:format("~p~n", [X]) end.
#Fun<erl_eval.6.50752066>

63> [spawn(fun() -> G(X) end) || X <- lists:seq(1,10)].
[<0.194.0>,<0.195.0>,<0.196.0>,<0.197.0>,<0.198.0>,
 <0.199.0>,<0.200.0>,<0.201.0>,<0.202.0>,<0.203.0>]
1   
2   
3   
4   
5   
6   
7   
8   
9   
10  
64> [spawn(fun() -> G(X) end) || X <- lists:seq(1,20)].
[<0.205.0>,<0.206.0>,<0.207.0>,<0.208.0>,<0.209.0>,
 <0.210.0>,<0.211.0>,<0.212.0>,<0.213.0>,<0.214.0>,<0.215.0>,
 <0.216.0>,<0.217.0>,<0.218.0>,<0.219.0>,<0.220.0>,<0.221.0>,
 <0.222.0>,<0.223.0>,<0.224.0>]
1   
2   
3   
4   
5   
6   
7   
8   
10  
9   
11  
12  
13  
14  
15  
16  
17  
18  
19  
20
12> self().                                            
<0.34.0>
13> exit(self()).
** exception exit: <0.34.0>
14> self().      
<0.118.0>
15> self().
<0.118.0>
16> self() ! hello
16> .
hello
17> self() ! self() ! double.
double
18> flush().
Shell got hello
Shell got double
Shell got double
ok
19> flush().
ok
20> c(dolphins).
{ok,dolphins}
21> Dolphin = spawn(dolphins, dolphin1, []).
<0.131.0>
22> Dolphin ! "oh, hello dolphin!"
22> .
Heh, we're smarter than you humans.
"oh, hello dolphin!"
23> Dolphin ! fish.
fish
24> Dolphin ! "fish".
"fish"
25> Dolphin ! "oh, hello dolphin!"
25> .
"oh, hello dolphin!"
26> Dolphin = spawn(dolphins, dolphin1, []).
** exception error: no match of right hand side value <0.137.0>
27> f(Dolphin).
ok
28> Dolphin = spawn(dolphins, dolphin1, []).
<0.141.0>
29> Dolphin ! "fish".                       
Heh, we're smarter than you humans.
"fish"
30> Dolphin = spawn(dolphins, dolphin1, []).
** exception error: no match of right hand side value <0.144.0>
31> Dolphin ! fish.                         
fish
32> f(Dolphin).                             
ok
33> Dolphin = spawn(dolphins, dolphin1, []).
<0.149.0>
34> f(Dolphin).                             
ok
35> Dolphin ! fish.                         
* 1: variable 'Dolphin' is unbound
36> Dolphin = spawn(dolphins, dolphin1, []).
<0.153.0>
37> Dolphin ! fish.                         
So long and thanks for all the fish!
fish
38> f(Dolphin).                             
ok
39> Dolphin = spawn(dolphins, dolphin1, []).
<0.157.0>
40> Dolphin ! do_a_flip.                    
How about no?
do_a_flip
41> c(dolphins).        
dolphins.erl:20: syntax error before: _
error
42> c(dolphins).        
{ok,dolphins}
43> Dolphin2 = spawn(dolphins, dolphin2, []).
<0.169.0>
44> Dolphin2 ! {self(), do_a_flip}.
{<0.145.0>,do_a_flip}
45> flush().
Shell got "How about no?"
ok
47> c(dolphins).
{ok,dolphins}
48> Dolphin3 = spawn(dolphins, dolphin3, []).
<0.182.0>
49> Dolphin3 ! Dolphin3 ! {self(), do_a_flip}.
{<0.145.0>,do_a_flip}
50> flush().
Shell got "How about no?"
ok
51> f(Dolphin2).                              
ok
52> Dolphin2 = spawn(dolphins, dolphin2, []). 
<0.187.0>
53> Dolphin2 ! Dolphin2 ! {self(), do_a_flip}.
{<0.145.0>,do_a_flip}
54> flush().
Shell got "How about no?"
ok
55> Dolphin3 ! Dolphin3 ! {self(), do_a_flip}.
{<0.145.0>,do_a_flip}
56> flush().                                  
ok
57> c(dolphins).                              
dolphins.erl:31: syntax error before: '->'
error
58> c(dolphins).
{ok,dolphins}
59> Dolphin3 ! Dolphin3 ! {self(), do_a_flip}.
{<0.145.0>,do_a_flip}
60> flush().                                  
ok
61> f(Dolphin3).
ok
62> Dolphin3 = spawn(dolphins, dolphin3, []). 
<0.205.0>
63> Dolphin3 ! Dolphin3 ! {self(), do_a_flip}.
{<0.145.0>,do_a_flip}
64> flush().                                  
Shell got "How about no?"
Shell got "How about no?"
ok
