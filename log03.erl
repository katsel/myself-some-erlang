211> cd("workspace/erlang/").
/home/ktr/workspace/erlang
ok
212> cd("workspace/erlang/").
/home/ktr/workspace/erlang
ok
213> c(useless).
{ok,useless}
214> useless:add(7,11).
18
215> useless:hello().
Hello, World!
ok
216> useless:
add/2                greet_and_add_two/1  hello/0              
module_info/0        module_info/1        
216> useless:greet_and_add_two(21).
Hello, World!
23
217> c(useless, [debug_info]).     
{ok,useless}
218> useless:greet_and_add_two(21).
Hello, World!
23
219> c(useless, [debug_info, native]).
{ok,useless}
220> useless:greet_and_add_two(21).   
Hello, World!
23
221> useless:module_info()
221> .
[{module,useless},
 {exports,[{add,2},
           {hello,0},
           {greet_and_add_two,1},
           {module_info,0},
           {module_info,1}]},
 {attributes,[{vsn,[65834353802220399808625540798125688188]}]},
 {compile,[{options,[debug_info,native]},
           {version,"6.0.3"},
           {time,{2016,5,11,12,46,7}},
           {source,"/home/ktr/workspace/erlang/useless.erl"}]},
 {native,true},
 {md5,<<191,221,82,233,172,97,70,253,204,91,175,87,149,
        79,202,194>>}]
222> c(useless).                      
{ok,useless}
223> useless:module_info()
223> .
[{module,useless},
 {exports,[{add,2},
           {hello,0},
           {greet_and_add_two,1},
           {module_info,0},
           {module_info,1}]},
 {attributes,[{vsn,[65834353802220399808625540798125688188]}]},
 {compile,[{options,[]},
           {version,"6.0.3"},
           {time,{2016,5,11,12,48,31}},
           {source,"/home/ktr/workspace/erlang/useless.erl"}]},
 {native,false},
 {md5,<<49,135,60,62,246,1,106,184,207,136,193,36,99,203,
        197,124>>}]
224> c(useless, [debug_info, native]).
{ok,useless}
225> useless:module_info().           
[{module,useless},
 {exports,[{add,2},
           {hello,0},
           {greet_and_add_two,1},
           {module_info,0},
           {module_info,1}]},
 {attributes,[{vsn,[65834353802220399808625540798125688188]}]},
 {compile,[{options,[debug_info,native]},
           {version,"6.0.3"},
           {time,{2016,5,11,12,48,54}},
           {source,"/home/ktr/workspace/erlang/useless.erl"}]},
 {native,true},
 {md5,<<191,221,82,233,172,97,70,253,204,91,175,87,149,
        79,202,194>>}]
