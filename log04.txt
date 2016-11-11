226> greet(male, Name) -> 
226> io:format("Hello, Mr ~s!", [Name]);
226> greet(female, Name) -> io:format("Hello, Mrs. ~s!", [Name]);
226> greet(_, Name) -> io:format("Hello, ~s!", [Name]);          
226> .
* 1: syntax error before: '->'
226> greet(_, Name) -> io:format("Hello, ~s!", [Name]).
* 1: syntax error before: '->'
226> 
226> .
* 2: syntax error before: '.'
226> greet(_, Name) -> io:format("Hello, ~s!", [Name]).
* 1: syntax error before: '->'
226> f(greet).
** exception error: no function clause matching call to f/1
227> greet().
** exception error: undefined shell command greet/0
228> greet(male, Name) ->                                        
228> io:format("Hello, Mr ~s!", [Name]);                         
228> greet(female, Name) -> io:format("Hello, Mrs. ~s!", [Name]);
228> greet(_, Name) -> io:format("Hello, ~s!", [Name]).          
* 1: syntax error before: '->'
228> greet(_, "Opa").
* 1: variable '_' is unbound
229> greet("Opa").   
** exception error: undefined shell command greet/1
230> greet(male, "Opa").
** exception error: undefined shell command greet/2
231> greet(male, Name) ->
231> io:format("Hello, Mr ~s!", [Name]);
231> greet(female, Name) ->
231> io:format("Hello, Mrs ~s!", [Name]);
231> greet(_, Name) ->
231> io:format("Hello, ~s!", [Name]).
* 1: syntax error before: '->'
231> greet(_, Name) ->               
231> io:format("Hello, ~s!", [Name]);
231> .
* 1: syntax error before: '->'
231> greet(male, Name) ->
231> io:format("Hello, Mr. ~s!", [Name]);
231> greet(female, Name) ->
231> io:format("Hello, Mrs. ~s!", [Name]);
231> greet(_, Name) ->
231> io:format("Hello, ~s!", [Name]).
* 1: syntax error before: '->'
231> greet(male, Name) -> io:format("Hello, Mr. ~s!", [Name]).
* 1: syntax error before: '->'
231> male.
male
232> Name.
* 1: variable 'Name' is unbound
233> greet(male, Name) -> true.
* 1: syntax error before: '->'
233> greet(male, Theirname) -> true.
* 1: syntax error before: '->'
233> greet(Male, Theirname) -> true.
* 1: syntax error before: '->'
233> greeting(male, Name) -> true.     
* 1: syntax error before: '->'
233> hello() ->
233> io:format("Hello, World!").
* 1: syntax error before: '->'
233> hello()->                  
233> io:format("Hello, World!").
* 1: syntax error before: '->'
233> c(useless, [debug_info, native]).                           
{ok,useless}
234> useless:greet("Myself").
** exception error: undefined function useless:greet/1
235> useless:greet(_, "Myself").
* 1: variable '_' is unbound
236> useless:greet(female, "Myself").
Hello, Mrs. Myself!ok
237> io:format("~s~n", [<<"Hello">>])
237> .
Hello
ok
238> io:format("~p~n", [<<"Hello">>]).
<<"Hello">>
ok
239> io:format("~~~n", [<<"Hello">>]).
** exception error: bad argument
     in function  io:format/3
        called as io:format(<0.27.0>,"~~~n",[<<"Hello">>])
240> io:format("~f~n", [<<"Hello">>]).
** exception error: bad argument
     in function  io:format/3
        called as io:format(<0.27.0>,"~f~n",[<<"Hello">>])
241> io:format("~~~n").               
~
ok
242> io:format("~f~n", [4.0]).        
4.000000
ok
243> io:format("~f~n", [4]).  
** exception error: bad argument
     in function  io:format/3
        called as io:format(<0.27.0>,"~f~n",[4])
244> io:format("~30f~n", [4.0]).
                      4.000000
ok
245> io:format("~0f~n", [4.0]). 

ok
246> io:format("~10f~n", [4.0]).
  4.000000
ok
247> io:format("~20f~n", [4.0]).
            4.000000
ok
248> io:format("~30f~n", [4.0]).
                      4.000000
ok
249> io:format("~40f~n", [4.0]).
                                4.000000
ok
250> io:format("~45f~n", [4.0]).
                                     4.000000
ok
251> io:format("~50f~n", [4.0]).
                                          4.000000
ok
252> io:format("~60f~n", [4.0]).
                                                    4.000000
ok
253> io:format("~70f~n", [4.0]).
                                                              4.000000
ok
254> io:format("~80f~n", [4.0]).
                                                                        4.000000 
ok
255> io:format("~90f~n", [4.0]).
                                                                                  4.000000
ok
256> io:format("~81f~n", [4.0]).
                                                                         4.000000
ok
257> useless:greet(none, "Myself").   
Hello, Myself!ok
258> c(useless)                    
258> .
useless.erl:2: function greet/1 undefined
error
259> useless:greet(none, "Myself").
Hello, Myself!ok
260> c(functions).
{ok,functions}
261> head([1,2])
261> .
** exception error: undefined shell command head/1
262> functions:head([1,2]).
1
263> functions:head([1, 2, 3, 4, 5]).
1
264> c(functions).                   
{ok,functions}
265> functions:second([1, 2, 3, 4, 5]).
2
266> second([_,X|_]) -> X.
* 1: syntax error before: '->'
266> c(functions).
functions.erl:17: Warning: wrong number of arguments in format call
{ok,functions}
267> c(functions).
{ok,functions}
268> functions:valid_time({2011,09,06},{09,04,43})
268> .
** exception error: undefined function functions:valid_time/2
269> functions:valid_time({{2011,09,06},{09,04,43}}).
The Date tuple ({2011,9,6}) says today is: 2011/9/6/,
The time tuple ({9,4,43}) indicates: 9:4:43.
ok
270> c(functions).                                   
{ok,functions}
271> functions:valid_time({{2011,09,06},{09,04,43}}).
The Date tuple ({2011,9,6}) says today is: 2011/9/6,
The time tuple ({9,4,43}) indicates: 9:4:43.
ok
272> functions:valid_time({{2011,09,06},{09,04}}).   
Stop feeding me wrong data!
ok
273> c(what_the_if).
what_the_if.erl:11: Warning: no clause will ever match
what_the_if.erl:11: Warning: the guard for this clause evaluates to 'false'
{ok,what_the_if}
274> what_the_if:heh_fine()
274> .
** exception error: no true branch found when evaluating an if expression
     in function  what_the_if:heh_fine/0 (what_the_if.erl, line 11)
275> c(what_the_if).       
what_the_if.erl:17: syntax error before: succeed
error
276> c(what_the_if).
what_the_if.erl:19: syntax error before: does
error
277> c(what_the_if).
what_the_if.erl:11: Warning: no clause will ever match
what_the_if.erl:11: Warning: the guard for this clause evaluates to 'false'
what_the_if.erl:15: Warning: function oh_god/1 is unused
{ok,what_the_if}
278> what_the_if:oh_god(1).
** exception error: undefined function what_the_if:oh_god/1
279> c(what_the_if).       
what_the_if.erl:11: Warning: no clause will ever match
what_the_if.erl:11: Warning: the guard for this clause evaluates to 'false'
what_the_if.erl:15: Warning: function oh_god/1 is unused
{ok,what_the_if}
280> c(what_the_if).
what_the_if.erl:11: Warning: no clause will ever match
what_the_if.erl:11: Warning: the guard for this clause evaluates to 'false'
what_the_if.erl:15: Warning: function oh_god/1 is unused
{ok,what_the_if}
281> c(what_the_if).       
what_the_if.erl:11: Warning: no clause will ever match
what_the_if.erl:11: Warning: the guard for this clause evaluates to 'false'
{ok,what_the_if}
282> what_the_if:oh_god(1).
always_does
283> what_the_if:oh_god(2).
might_succeed
284> what_the_if:oh_god(3).
always_does
285> c(what_the_if).       
what_the_if.erl:29: syntax error before: '++'
error
286> c(what_the_if).
what_the_if.erl:11: Warning: no clause will ever match
what_the_if.erl:11: Warning: the guard for this clause evaluates to 'false'
what_the_if.erl:22: Warning: function help_me/1 is unused
{ok,what_the_if}
287> c(what_the_if).
what_the_if.erl:11: Warning: no clause will ever match
what_the_if.erl:11: Warning: the guard for this clause evaluates to 'false'
{ok,what_the_if}
288> what_the_if:help_me(dog).
{dog,"says bark!"}
289> what_the_if:help_me(it_hurts).
{it_hurts,"says fgdadfgna!"}
290> what_the_if:help_me("it hurts!").
{"it hurts!","says fgdadfgna!"}
291> c(what_the_if).                  
what_the_if.erl:11: Warning: no clause will ever match
what_the_if.erl:11: Warning: the guard for this clause evaluates to 'false'
{ok,what_the_if}
292> c(what_the_if).
what_the_if.erl:2: function insert/2 undefined
error
293> c(what_the_if).
what_the_if.erl:11: Warning: no clause will ever match
what_the_if.erl:11: Warning: the guard for this clause evaluates to 'false'
{ok,what_the_if}
294> c(cases).
cases.erl:4: syntax error before: insert
error
295> c(cases).
{ok,cases}
296> c(cases).
cases.erl:12: Warning: function beach/1 is unused
{ok,cases}
297> c(cases).
{ok,cases}
298> cases:beach({celsius, 25}).
favorable
299> cases:beach({celsius, 5}). 
'avoid beach'
300> cases:beach({celsius, -5}).
'avoid beach'
301> [1, 2, 3] + 1
301> .
** exception error: an error occurred when evaluating an arithmetic expression
     in operator  +/2
        called as [1,2,3] + 1
302> [1, 2, 3].   
[1,2,3]
303> [95, 96, 97].
"_`a"
304> [17, 96, 97].
[17,96,97]
305> [1, 96, 97]. 
[1,96,97]
306> 
