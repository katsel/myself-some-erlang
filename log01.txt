$ erl
Erlang/OTP 18 [erts-7.3.1] [source] [64-bit] [smp:4:4] [async-threads:10] [hipe] [kernel-poll:false]

Eshell V7.3.1  (abort with ^G)
1> lists:
all/2          any/2          append/1       append/2       concat/1       
delete/2       droplast/1     dropwhile/2    duplicate/2    filter/2       
filtermap/2    flatlength/1   flatmap/2      flatten/1      flatten/2      
foldl/3        foldr/3        foreach/2      keydelete/3    keyfind/3      
keymap/3       keymember/3    keymerge/3     keyreplace/4   keysearch/3    
keysort/2      keystore/4     keytake/3      last/1         map/2          
mapfoldl/3     mapfoldr/3     max/1          member/2       merge/1        
merge/2        merge/3        merge3/3       min/1          module_info/0  
module_info/1  nth/2          nthtail/2      partition/2    prefix/2       
reverse/1      reverse/2      rkeymerge/3    rmerge/2       rmerge/3       
rmerge3/3      rukeymerge/3   rumerge/2      rumerge/3      rumerge3/3     
seq/2          seq/3          sort/1         sort/2         split/2        
splitwith/2    sublist/2      sublist/3      subtract/2     suffix/2       
sum/1          takewhile/2    ukeymerge/3    ukeysort/2     umerge/1       
umerge/2       umerge/3       umerge3/3      unzip/1        unzip3/1       
usort/1        usort/2        zf/2           zip/2          zip3/3         
zipwith/3      zipwith3/4     
1> help()
1> help().
* 2: syntax error before: help
1> help().
** shell internal commands **
b()        -- display all variable bindings
e(N)       -- repeat the expression in query <N>
f()        -- forget all variable bindings
f(X)       -- forget the binding of variable X
h()        -- history
history(N) -- set how many previous commands to keep
results(N) -- set how many previous command results to keep
catch_exception(B) -- how exceptions are handled
v(N)       -- use the value of query <N>
rd(R,D)    -- define a record
rf()       -- remove all record information
rf(R)      -- remove record information about R
rl()       -- display all record information
rl(R)      -- display record information about R
rp(Term)   -- display Term using the shell's record information
rr(File)   -- read record information from File (wildcards allowed)
rr(F,R)    -- read selected record information from file(s)
rr(F,R,O)  -- read selected record information with options
** commands in module c **
bt(Pid)    -- stack backtrace for a process
c(File)    -- compile and load code in <File>
cd(Dir)    -- change working directory
flush()    -- flush any messages sent to the shell
help()     -- help info
i()        -- information about the system
ni()       -- information about the networked system
i(X,Y,Z)   -- information about pid <X,Y,Z>
l(Module)  -- load or reload module
lc([File]) -- compile a list of Erlang modules
ls()       -- list files in the current directory
ls(Dir)    -- list files in directory <Dir>
m()        -- which modules are loaded
m(Mod)     -- information about module <Mod>
memory()   -- memory allocation information
memory(T)  -- memory allocation information of type <T>
nc(File)   -- compile and load code in <File> on all nodes
nl(Module) -- load module on all nodes
pid(X,Y,Z) -- convert X,Y,Z to a Pid
pwd()      -- print working directory
q()        -- quit - shorthand for init:stop()
regs()     -- information about registered processes
nregs()    -- information about all registered processes
uptime()   -- print node uptime
xm(M)      -- cross reference check a module
y(File)    -- generate a Yecc parser
** commands in module i (interpreter interface) **
ih()       -- print help for the i module
true
2> h  
2> help().
* 2: syntax error before: help
2> help().
** shell internal commands **
b()        -- display all variable bindings
e(N)       -- repeat the expression in query <N>
f()        -- forget all variable bindings
f(X)       -- forget the binding of variable X
h()        -- history
history(N) -- set how many previous commands to keep
results(N) -- set how many previous command results to keep
catch_exception(B) -- how exceptions are handled
v(N)       -- use the value of query <N>
rd(R,D)    -- define a record
rf()       -- remove all record information
rf(R)      -- remove record information about R
rl()       -- display all record information
rl(R)      -- display record information about R
rp(Term)   -- display Term using the shell's record information
rr(File)   -- read record information from File (wildcards allowed)
rr(F,R)    -- read selected record information from file(s)
rr(F,R,O)  -- read selected record information with options
** commands in module c **
bt(Pid)    -- stack backtrace for a process
c(File)    -- compile and load code in <File>
cd(Dir)    -- change working directory
flush()    -- flush any messages sent to the shell
help()     -- help info
i()        -- information about the system
ni()       -- information about the networked system
i(X,Y,Z)   -- information about pid <X,Y,Z>
l(Module)  -- load or reload module
lc([File]) -- compile a list of Erlang modules
ls()       -- list files in the current directory
ls(Dir)    -- list files in directory <Dir>
m()        -- which modules are loaded
m(Mod)     -- information about module <Mod>
memory()   -- memory allocation information
memory(T)  -- memory allocation information of type <T>
nc(File)   -- compile and load code in <File> on all nodes
nl(Module) -- load module on all nodes
pid(X,Y,Z) -- convert X,Y,Z to a Pid
pwd()      -- print working directory
q()        -- quit - shorthand for init:stop()
regs()     -- information about registered processes
nregs()    -- information about all registered processes
uptime()   -- print node uptime
xm(M)      -- cross reference check a module
y(File)    -- generate a Yecc parser
** commands in module i (interpreter interface) **
ih()       -- print help for the i module
true
3> q()
3> q()
3> 
User switch command
 --> q
:~$ erl
Erlang/OTP 18 [erts-7.3.1] [source] [64-bit] [smp:4:4] [async-threads:10] [hipe] [kernel-poll:false]

Eshell V7.3.1  (abort with ^G)
1> 
User switch command
 --> h
  c [nn]            - connect to job
  i [nn]            - interrupt job
  k [nn]            - kill job
  j                 - list all jobs
  s [shell]         - start local shell
  r [node [shell]]  - start remote shell
  q                 - quit erlang
  ? | h             - this message
 --> j
   1* {shell,start,[init]}
 --> 2+15
Unknown command
 --> 2+15.
Unknown command
 --> 2 + 15.
Unknown command
 --> 
 --> c1
Unknown command
 --> c 1
