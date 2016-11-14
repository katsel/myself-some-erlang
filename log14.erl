Erlang/OTP 19 [erts-8.1] [source] [64-bit] [smp:4:4] [async-threads:10] [hipe] [kernel-poll:false]

Eshell V8.1  (abort with ^G)
1> cd("event/src").
/home/ktr/w/erlang/learnyousome/my-code/event/src
ok
2> c(event).
{ok,event}
3> rr(event,state).
[state]
4> spawn(event, loop, [#state{server=self(), name="test", to_go=5}]).
<0.69.0>
5> flush().
Shell got {done,"test"}
ok
6> spawn(event, loop, [#state{server=self(), name="test", to_go=5}]).
<0.72.0>
7> spawn(event, loop, [#state{server=self(), name="test", to_go=5}]).
<0.74.0>
8> flush().                                                          
ok
9> flush().
ok
10> flush().
ok
11> flush().
Shell got {done,"test"}
ok
12> flush().
Shell got {done,"test"}
ok
13> flush().
ok
14> flush().
ok
15> spawn(event, loop, [#state{server=self(), name="test", to_go=5}]).
<0.83.0>
16> flush().                                                          
ok
17> flush().
Shell got {done,"test"}
ok
18> Pid = spawn(event, loop, [#state{server=self(), name="test", to_go=500}]).
<0.87.0>
19> ReplyRef=make_ref().
#Ref<0.0.2.307>
20> Pid ! {self(), ReplyRef, cancel}.
{<0.58.0>,#Ref<0.0.2.307>,cancel}
21> flush().                                                                  
Shell got {#Ref<0.0.2.307>,ok}
ok
22> lists:duplicate([1],[1]).
** exception error: no function clause matching lists:duplicate([1],[1]) (lists.erl, line 303)
23> lists:duplicate([1,1]).  
** exception error: undefined function lists:duplicate/1
24> lists:duplicate(1,1).  
[1]
25> lists:duplicate(2,1).
[1,1]
26> Pid = spawn(event, loop, [#state{server=self(), name="test", to_go=365*24*60*60}]).
** exception error: no match of right hand side value <0.98.0>
27> 
=ERROR REPORT==== 13-Nov-2016::17:12:59 ===
Error in process <0.98.0> with exit value:
{timeout_value,[{event,loop,1,[{file,"event.erl"},{line,12}]}]}

27> c(event).                                                                   event.erl:23: Warning: function normalize/1 is unused
{ok,event}
28> rr(event,state).                                                            [state]
29> Pid = spawn(event, loop, [#state{server=self(), name="test", to_go=365*24*60*60}]).

=ERROR REPORT==== 13-Nov-2016::17:13:21 ===
Error in process <0.109.0> with exit value:
{function_clause,[{event,loop,
                         [{state,<0.99.0>,"test",31536000}],
                         [{file,"event.erl"},{line,9}]}]}
** exception error: no match of right hand side value <0.109.0>
30> Pid = spawn(event, loop, [#state{server=self(), name="test", to_go=event:normalize(365*24*60*60)}]).
** exception error: undefined function event:normalize/1
31> c(event).                                                                   {ok,event}              
32> rr(event,state).                                                            [state]                 
33> Pid = spawn(event, loop, [#state{server=self(), name="test", to_go=event:normalize(365*24*60*60)}]).
** exception error: no match of right hand side value <0.122.0>
34> f(Pid).
ok
35> Pid = spawn(event, loop, [#state{server=self(), name="test", to_go=event:normalize(365*24*60*60)}]).
<0.126.0>
36> event:normalize(365*24*60*60).                                              [1900800,4233600,4233600,4233600,4233600,4233600,4233600,
 4233600]
37> c(event).                                                                   event.erl:10: Warning: function start/2 is unused
event.erl:13: Warning: function start_link/2 is unused
event.erl:16: Warning: function cancel/1 is unused
event.erl:29: Warning: function init/3 is unused
{ok,event}
38> c(event).                     
{ok,event}
39> rr(event,state).                                                            [state]                 
40> f().            
ok
41> event:start("Event1", 0)
41> .
<0.143.0>
42> flush().
Shell got {done,"Event1"}
ok
43> Pid = event:start("Event2", 500).
<0.146.0>
44> event:cancel(Pid).
** exception error: bad argument
     in function  monitor/2
        called as monitor(#Ref<0.0.2.642>,[flush])
     in call from event:cancel/1 (event.erl, line 29)
45> c(event).                        
{ok,event}
46> rr(event,state).                 
[state]
47> event:cancel(Pid).
ok
48> event:cancel(Pid).
ok
49> Pid = event:start("Event2", 500).
** exception error: no match of right hand side value <0.160.0>
50> f().
ok
51> Pid = event:start("Event2", 500).
<0.164.0>
52> event:cancel(Pid).               
ok
53> 

Erlang/OTP 19 [erts-8.1] [source] [64-bit] [smp:4:4] [async-threads:10] [hipe] [kernel-poll:false]

Eshell V8.1  (abort with ^G)
1> cd("event/src").
/home/ktr/w/erlang/learnyousome/my-code/event/src
ok
2> c(event).
event.erl:39: variable 'DateTime' is unbound
event.erl:36: Warning: variable 'Delay' is unused
error
3> c(event).
{ok,event}
4> c(evserv).
{ok,evserv}
5> event:start("Event", {2016,11,14},{16,13,00}).
** exception error: undefined function event:start/3
6> event:start("Event", {{2016,11,14},{16,13,00}}).
<0.77.0>
7> event:start("Event2", {{2016,11,14},{16,15,00}}).
<0.79.0>
8> Pid = event:start("Event2", {{2016,11,14},{16,15,00}}).
<0.81.0>
9> event:cancel(Pid).
ok
10> event:start("Event2", 1).                              

=ERROR REPORT==== 14-Nov-2016::16:15:01 ===
Error in process <0.84.0> with exit value:
{function_clause,[{event,time_to_go,[1],[{file,"event.erl"},{line,60}]},
                  {event,init,3,[{file,"event.erl"},{line,39}]}]}
<0.84.0>
11> flush().
Shell got {done,"Event"}
Shell got {done,"Event2"}
ok
12> 

$ erl -pa ebin/
Erlang/OTP 19 [erts-8.1] [source] [64-bit] [smp:4:4] [async-threads:10] [hipe] [kernel-poll:false]

Eshell V8.1  (abort with ^G)
1> evserv:start().
<0.60.0>
2> evserv:subscribe(self()).
{ok,#Ref<0.0.3.91>}
3> evserv:add_event("Hey there", "test", {{2016,11,14},{18,0,0}}).
ok
4> evserv:listen(5).
[]
5> evserv:add_event("Hey there2", "test", {{2017,1,1},{0,0,0}}).   
ok
6> evserv:cancel("Hey there2").
ok
7> ev
event     evserv    
7> evserv:listen(2000).
[{done,"Hey there","test"}]

$ erl -pa ebin/
Erlang/OTP 19 [erts-8.1] [source] [64-bit] [smp:4:4] [async-threads:10] [hipe] [kernel-poll:false]

Eshell V8.1  (abort with ^G)
1> make:all([load]).
up_to_date
2> make:all([load]).
Recompile: src/sup
up_to_date
3> SupPid = sup:start(evserv, []).
<0.78.0>
4> whereis(evserv).
<0.79.0>
5> exit(whereis(evserv), die).
Process <0.79.0> exit for reason die
true
6> exit(whereis(evserv), die).
Process <0.82.0> exit for reason die
true
7> exit(whereis(evserv), die).
Process <0.84.0> exit for reason die
true
8> exit(whereis(evserv), die).
Process <0.86.0> exit for reason die
true
9> exit(whereis(evserv), die).
Process <0.88.0> exit for reason die
true
10> exit(SupPid, shutdown).
true
11> whereis(evserv).           
undefined
12> 
