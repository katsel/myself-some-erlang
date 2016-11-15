Erlang/OTP 19 [erts-8.1] [source] [64-bit] [smp:4:4] [async-threads:10] [hipe] [kernel-poll:false]

Eshell V8.1  (abort with ^G)
1> c(cat_fsm).
{ok,cat_fsm}
2> Cat = cat_fsm:start().
<0.65.0>
3> cat_fsm:event(Cat, pet).
Switching to 'dont_give_crap' state
{ok,meh}
4> cat_fsm:event(Cat, love).
Switching to 'dont_give_crap' state
{ok,meh}
5> cat_fsm:event(Cat, cherish).
Switching to 'dont_give_crap' state
{ok,meh}
6> cat_fsm:event(Cat, "give food").
Switching to 'dont_give_crap' state
{ok,meh}

Erlang/OTP 19 [erts-8.1] [source] [64-bit] [smp:4:4] [async-threads:10] [hipe] [kernel-poll:false]

Eshell V8.1  (abort with ^G)
1> c(dog_fsm).
{ok,dog_fsm}
2> Pid = dog_fsm:start().
Dog says: BARK! BARK!
<0.65.0>
Dog says: BARK! BARK!
3> dog_fsm:pet(Pid).
Dog wags its tail
pet
4> dog_fsm:pet(Pid).
Dog is sitting. Gooooood girl!
pet
5> dog_fsm:pet(Pid).
Dog is confused
pet
Dog is sitting. Gooooood girl!
6> dog_fsm:squirrel(Pid).
Dog says: BARK! BARK!
squirrel
Dog says: BARK! BARK!
Dog says: BARK! BARK!
Dog says: BARK! BARK!    
7> dog_fsm:pet(Pid).
Dog wags its tail
pet
Dog says: BARK! BARK!
Dog says: BARK! BARK!
8> dog_fsm:pet(Pid).
Dog wags its tail
pet
9> dog_fsm:pet(Pid).
Dog is sitting. Gooooood girl!
pet
10> 
