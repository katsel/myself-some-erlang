ktr@ag:~/workspace/erlang$ erl
Erlang/OTP 18 [erts-7.3.1] [source] [64-bit] [smp:4:4] [async-threads:10] [hipe] [kernel-poll:false]

Eshell V7.3.1  (abort with ^G)
1> 5 + "1".
** exception error: an error occurred when evaluating an arithmetic expression
     in operator  +/2
        called as 5 + "1"
2> 6 = 5 + "1".
** exception error: an error occurred when evaluating an arithmetic expression
     in operator  +/2
        called as 5 + "1"
3> 6 = 5 + 1.  
6
4> "1" + 5.
** exception error: an error occurred when evaluating an arithmetic expression
     in operator  +/2
        called as "1" + 5
5> "1" + 5 + 3.
** exception error: an error occurred when evaluating an arithmetic expression
     in operator  +/2
        called as "1" + 5
6> erlang:list_to_integer("54").
54
7> erlang:list_to_integer([5, 4]).
** exception error: bad argument
     in function  list_to_integer/1
        called as list_to_integer([5,4])
8> erlang:list_to_integer({5, 4}).
** exception error: bad argument
     in function  list_to_integer/1
        called as list_to_integer({5,4})
9> erlang:list_to_integer([98]).  
** exception error: bad argument
     in function  list_to_integer/1
        called as list_to_integer("b")
10> erlang:in                    
insert_element/3     integer_to_binary/1  integer_to_binary/2  
integer_to_list/1    integer_to_list/2    
10> erlang:integer_to_list(54).
"54"
11> erlang:li
link/1                   list_to_atom/1           list_to_binary/1         
list_to_bitstring/1      list_to_existing_atom/1  list_to_float/1          
list_to_integer/1        list_to_integer/2        list_to_pid/1            
list_to_tuple/1          
11> erlang:list_to_float("54.32").
54.32
12> erlang:atom_to_list(true).
"true"
13> erlang:li
link/1                   list_to_atom/1           list_to_binary/1         
list_to_bitstring/1      list_to_existing_atom/1  list_to_float/1          
list_to_integer/1        list_to_integer/2        list_to_pid/1            
list_to_tuple/1          
13> erlang:list_to_bitstring("hi there").
<<"hi there">>
14> erlang:bi
binary_part/2              binary_part/3              
binary_to_atom/2           binary_to_existing_atom/2  
binary_to_float/1          binary_to_integer/1        
binary_to_integer/2        binary_to_list/1           
binary_to_list/3           binary_to_term/1           
binary_to_term/2           bit_size/1                 
bitsize/1                  bitstring_to_list/1        

14> erlang:bit
bit_size/1           bitsize/1            bitstring_to_list/1  

14> erlang:bits
bitsize/1            bitstring_to_list/1  
14> erlang:bitstring_to_list(<<"hi there">>).
"hi there"
15> is_atom(btom).
true
16> is_bitstring(<<"hi!">>).
true
17> is_float(4).
false
18> is_float(4.0).
true
19> is_integer(4).
true
20> is_integer(4.0).
false
21> is_pid(1).
false
22> is_binary(<<1>>).
true
23> is_binary(10101).
false
24> is_binary(2#10101).
false
25> 2#10101
25> .
21
26> is_boolean(true).
true
27> is_boolean(false).
true
28> is_boolean(0).    
false
29> is_boolean(1).
false
30> is_function(f).
false
31> is_function(f()).
false
32> cd("workspace/erlang")
32> .
/home/ktr/workspace/erlang
ok
33> c("what_the_if").     
what_the_if.erl:11: Warning: no clause will ever match
what_the_if.erl:11: Warning: the guard for this clause evaluates to 'false'
{ok,what_the_if}
34> what_the_if:
heh_fine/0     help_me/1      module_info/0  module_info/1  oh_god/1       

34> what_the_if:
heh_fine/0     help_me/1      module_info/0  module_info/1  oh_god/1       

34> what_the_if:he
heh_fine/0  help_me/1   
34> is_function(what_the_if:help_me).
* 1: illegal expression
35> is_function(what_the_if:help_me).
* 1: illegal expression
36> is_function(cd).
false
37> cd
37> .
cd
38> cd().
** exception error: undefined shell command cd/0
39> is_function(what_the_if:help_me/1).
* 1: illegal expression
40> is_function(what_the_if, help_me/1).
** exception error: an error occurred when evaluating an arithmetic expression
     in operator  '/'/2
        called as help_me / 1
41> is_function(what_the_if, help_me).  
** exception error: bad argument
     in function  is_function/2
        called as is_function(what_the_if,help_me)
42> is_function(what_the_if:help_me, 1).
* 1: illegal expression
43> is_function(cd, 1).                 
false
44> is_function(cd(), 1).
** exception error: undefined shell command cd/0
45> is_function(cd(".")).
/home/ktr/workspace/erlang
false
46> is_list("abcd")
46> .
true
47> is_number(4).
true
48> is_number(4.0).
true
49> tuple_size({1, 2})
49> .
2
50> tuple_size({1, 2, 3}).
3
51> tuple_size({1, 2, 3, 4}).
4
52> 1 and 1.
** exception error: bad argument
     in operator  and/2
        called as 1 and 1
