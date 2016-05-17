$ erl
Erlang/OTP 18 [erts-7.3.1] [source] [64-bit] [smp:4:4] [async-threads:10] [hipe] [kernel-poll:false]

Eshell V7.3.1  (abort with ^G)
1> c(exceptions).
exceptions.erl:4: syntax error before: F
error
2> c(exceptions).
{ok,exceptions}
3> exceptions:throws(fun() -> throw(thrown) end).
{throw,caught,thrown}
4> exceptions:throws(fun() -> erlang:error(pang) end).
** exception error: pang
     in function  exceptions:throws/1 (exceptions.erl, line 5)
5> c(exceptions).                                     
{ok,exceptions}
6> c(exceptions).   
{ok,exceptions}
7> exceptions:errors(
application               application_controller    application_master        
beam_a                    beam_asm                  beam_block                
beam_bool                 beam_bsm                  beam_clean                
beam_dead                 beam_dict                 beam_except               
beam_flatten              beam_jump                 beam_lib                  
beam_opcodes              beam_peep                 beam_receive              
beam_split                beam_trim                 beam_type                 
beam_utils                beam_validator            beam_z                    
binary                    c                         cerl                      
cerl_clauses              cerl_sets                 cerl_trees                
code                      code_server               compile                   
core_lib                  dict                      edlin                     
edlin_expand              epp                       erl_anno                  
erl_bifs                  erl_distribution          erl_eval                  
erl_expand_records        erl_internal              erl_lint                  
erl_parse                 erl_prim_loader           erl_scan                  
erlang                    error_handler             error_logger              
error_logger_tty_h        erts_internal             ets                       
exceptions                file                      file_io_server            
file_server               filename                  gb_sets                   
gb_trees                  gen                       gen_event                 
gen_server                global                    global_group              
group                     heart                     hipe_unified_loader       
inet                      inet_config               inet_db                   
inet_gethost_native       inet_parse                inet_udp                  
init                      io                        io_lib                    
io_lib_format             io_lib_pretty             kernel                    
kernel_config             lib                       lists                     
maps                      net_kernel                orddict                   
ordsets                   os                        otp_internal              
otp_ring0                 prim_eval                 prim_file                 
prim_inet                 prim_zip                  proc_lib                  
proplists                 queue                     ram_file                  
rpc                       sets                      shell                     
shell_default             sofs                      standard_error            
supervisor                supervisor_bridge         sys_core_dsetel           
sys_core_fold             sys_pre_expand            unicode                   
user_drv                  user_sup                  v3_codegen                
v3_core                   v3_kernel                 v3_life                   
zlib                      
7> exceptions:errors(fun() -> erlang:error("Die!") end).
{error,caught,"Die!"}
8> exceptions:exits(fun() -> exit(goodbye) end).
{exit,caught,goodbye}
9> c(exceptions).
exceptions.erl:31: variable 'Attach' is unbound
exceptions.erl:31: Warning: variable 'Attack' is unused
error
10> c(exceptions).
{ok,exceptions}
11> exceptions:talk()
11> .
"blah blah"
12> exceptions:black_knight(fun exceptions:talk/0).
"None shall pass."
13> exceptions:black_knight(fun() -> exceptions:sword(1) end).
"Just a flesh wound."
14> exceptions:black_knight(fun() -> exceptions:sword(1) end).
"Just a flesh wound."
15> exceptions:black_knight(fun() -> exceptions:sword(2) end).
"I've had worse."
16> exceptions:black_knight(fun() -> exceptions:sword(3) end).
"Come on you pansy!"
17> exceptions:black_knight(fun() -> exceptions:sword(4) end).
"Just a flesh wound."
18> exceptions:black_knight(fun() -> exceptions:sword(5) end).
"Just a flesh wound."
19> c(exceptions).                                            
{ok,exceptions}
20> exceptions:black_knight(fun() -> exceptions:sword(1) end).
"It is but a scratch."
21> c(exceptions).                                            
exceptions.erl:47: Warning: the result of the expression is ignored (suppress the warning by assigning the expression to the _ variable)
{ok,exceptions}
22> exceptions:whoa().
{caught,throw,up}
23> catch throw(whoa).
whoa
24> throw(whoa).      
** exception throw: whoa
25> catch 1/0.
{'EXIT',{badarith,[{erlang,'/',[1,0],[]},
                   {erl_eval,do_apply,6,[{file,"erl_eval.erl"},{line,674}]},
                   {erl_eval,expr,5,[{file,"erl_eval.erl"},{line,431}]},
                   {shell,exprs,7,[{file,"shell.erl"},{line,686}]},
                   {shell,eval_exprs,7,[{file,"shell.erl"},{line,641}]},
                   {shell,eval_loop,3,[{file,"shell.erl"},{line,626}]}]}}
26> catch doesnt:exist(a,4).
{'EXIT',{undef,[{doesnt,exist,[a,4],[]},
                {erl_eval,do_apply,6,[{file,"erl_eval.erl"},{line,674}]},
                {erl_eval,expr,5,[{file,"erl_eval.erl"},{line,431}]},
                {shell,exprs,7,[{file,"shell.erl"},{line,686}]},
                {shell,eval_exprs,7,[{file,"shell.erl"},{line,641}]},
                {shell,eval_loop,3,[{file,"shell.erl"},{line,626}]}]}}
27> c(exceptions).          
exceptions.erl:47: Warning: the result of the expression is ignored (suppress the warning by assigning the expression to the _ variable)
{ok,exceptions}
28> exceptions:catcher(3,3).
1.0
29> exceptions:catcher(6,3).
2.0
30> exceptions:catcher(6,0).
"uh oh"
31> catch erlang:boat().
{'EXIT',{undef,[{erlang,boat,[],[]},
                {erl_eval,do_apply,6,[{file,"erl_eval.erl"},{line,674}]},
                {erl_eval,expr,5,[{file,"erl_eval.erl"},{line,431}]},
                {shell,exprs,7,[{file,"shell.erl"},{line,686}]},
                {shell,eval_exprs,7,[{file,"shell.erl"},{line,641}]},
                {shell,eval_loop,3,[{file,"shell.erl"},{line,626}]}]}}
32> c(exceptions).          
exceptions.erl:47: Warning: the result of the expression is ignored (suppress the warning by assigning the expression to the _ variable)
{ok,exceptions}
33> catch exceptions:one_or_two(1).
return
34> catch exceptions:one_or_two(2).
return
