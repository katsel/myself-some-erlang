12> c(linkmon).
{ok,linkmon}
13> spawn(fun linkmon:myproc/0).
<0.121.0>
14> spawn(fun linkmon:myproc/0).
<0.123.0>
15> link(spawn(fun linkmon:myproc/0)).
true
** exception error: reason
16> link(spawn(fun linkmon:myproc/0)).
true
17> c(linkmon).
{ok,linkmon}
** exception error: reason
18> c(linkmon).
linkmon.erl:10: syntax error before: _
error
19> c(linkmon).
linkmon.erl:8: Warning: function chain/1 is unused
{ok,linkmon}
20> c(linkmon).
{ok,linkmon}
21> link(spawn(linkmon, chain, [3])).
true
** exception error: "chain dies here"
22> link(spawn(linkmon, chain, [10])).
true
** exception error: "chain dies here"
23> c(linkmon).                       
linkmon.erl:11: function sleep/1 undefined
error
24> c(linkmon).
{ok,linkmon}
25> link(spawn(linkmon, chain, [10])).
true
** exception error: "chain dies here"
26> link(spawn(linkmon, chain, [100])).
true
** exception error: "chain dies here"
27> c(linkmon).                        
{ok,linkmon}
28> link(spawn(linkmon, chain, [1])).  
true
** exception error: "chain dies here"
29> link(spawn(linkmon, chain, [10])).
true
** exception error: "chain dies here"
30> link(spawn(linkmon, chain, [100])).
true
** exception error: "chain dies here"
31> c(linkmon).                        
{ok,linkmon}
32> link(spawn(linkmon, chain, [100])).
true
** exception error: "chain dies here"
33> link(spawn(linkmon, chain, [1])).  
true
** exception error: "chain dies here"
34> c(linkmon).                        
{ok,linkmon}
35> link(spawn(linkmon, chain, [100])).
true
36> link(spawn(linkmon, chain, [20])). 
true
** exception error: "chain dies here"
37> exit(kill).
** exception exit: kill
38> exit(kill).
** exception exit: kill
39> exit(spawn_link(fun() -> exit(kill) end), normal).
** exception exit: killed
40> exit(spawn_link(fun() -> exit(kill) end), kill).  
** exception exit: killed
41> spawn_link(fun() -> exit(kill) end).            
** exception exit: killed
42> process_flag(trap_exit, true).
false
43> process_flag(trap_exit, true).
true
44> process_flag(trap_exit, true).
true
45> spawn_link(fun() -> exit(kill) end).
<0.616.0>
46> exit(self(), normal).
true
47> receive X -> X end.
{'EXIT',<0.616.0>,kill}

Eshell V7.3.1  (abort with ^G)
1> c(linkmon).
{ok,linkmon}
2> Critic = linkmon:start_critic().
<0.41.0>
3> linkmon:judge(Critic, "Genesis", "The Lambda").
"They are terrible!"
4> Critic.       
<0.41.0>
5> exit(Critic, solar_storm).
true
6> Critic.
<0.41.0>
7> linkmon:judge(Critic, "Genesis", "The Lambda").
timeout
8> registered(). 
[global_group,kernel_safe_sup,erl_prim_loader,init,rex,user,
 error_logger,kernel_sup,inet_db,global_name_server,
 code_server,standard_error_sup,file_server_2,
 application_controller,user_drv,standard_error]
9> c(linkmon).                                    
{ok,linkmon}
10> linkmon:judge(Critic, "Genesis", "The Lambda").
timeout
11> f(Critic).                                     
ok
12> linkmon:judge(Critic, "Genesis", "The Lambda").
* 1: variable 'Critic' is unbound
13> Critic = linkmon:start_critic2().
<0.57.0>
14> linkmon:judge(Critic, "Genesis", "The Lambda").
timeout
15> f(Critic).                                     
ok
16> c(linkmon).                                    
{ok,linkmon}
17> Critic = linkmon:start_critic2().              
<0.67.0>
18> linkmon:judge(Critic, "Genesis", "The Lambda").
timeout
19> f(Critic).                                     
ok
20> c(linkmon).                                    
linkmon.erl:60: Warning: function judge2/2 is unused
{ok,linkmon}
21> c(linkmon).
{ok,linkmon}
22> f(Critic). 
ok
23> Critic = linkmon:start_critic2().              
<0.83.0>
24> linkmon:judge("Genesis", "The Lambda").        
** exception error: undefined function linkmon:judge/2
25> linkmon:judge2("Genesis", "The Lambda").
"They are terrible!"
26> 

32> c(linkmon).             
{ok,linkmon}
33> linkmon:start_critic2().
<0.157.0>
34> linkmon:judge2("The Doors","Light my Firewall").
"They are terrible!"
