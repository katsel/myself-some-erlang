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

1> c(trade_calls).
{ok,trade_calls}
2> trade_calls:main_ab().
Spawned Carla: <0.66.0>
Spawned Ann: <0.68.0>
<0.67.0>
Ann: asking user <0.66.0> for a trade
Carla: <0.68.0> asked for a trade negotiation
Carla: accepting negotiation
Ann: starting negotiation
Ann: offering "boots"
Carla: other player offering "boots"
Ann: cancelling offer on "boots"
Carla: other player cancelling offer on "boots"
Carla: asking if ready, waiting
other player ready to trade.
Ann: other player ready to transfer goods:
you get [], the other side gets []
Carla: other side not ready yet
Ann: offering "shotgun"
Carla: other side offering "shotgun"
offer_changed
b synchronizing
Carla: offering "horse"
Ann: other player offering "horse"
Carla: offering "sword"
Ann: other player offering "sword"
a synchronizing
Carla: asking if ready, waiting
Ann: offering "horse"
Carla: other side offering "horse"
Ann: asking if ready, waiting
Ann: asked if ready, and I am. waiting for same reply
other player ready to trade.
Carla: other player ready to transfer goods:
you get ["horse","shotgun"], the other side gets ["sword","horse"]
<0.66.0> received unknown event 'ready!' while in state negotiate
Ann: other side not ready yet
Carla: asking if ready, waiting
Ann: asked if ready, and I am. waiting for same reply
Carla: other side is ready. moving to ready state
Ann: other side is ready. moving to ready state
<0.66.0> received unknown event 'ready!' while in state ready
Ann: asking for commit
Carla: replying to ask_commit
Ann: ordering commit
Carla: committing...
transaction completed for Carla. items sent are:
["sword","horse"],
received are:
["horse","shotgun"].
this operation should have some atomic save in a database.
Carla: FSM leaving.
Ann: committing...
transaction completed for Ann. items sent are:
["horse","shotgun"],
received are:
["sword","horse"].
this operation should have some atomic save in a database.
Ann: FSM leaving.
3> trade_calls:main_cd().
Spawned Pete: <0.73.0>
Spawned Dawn: <0.71.0>
<0.73.0>
Dawn: asking user <0.73.0> for a trade
Pete: asking user <0.71.0> for a trade
Dawn: starting negotiation
Pete: starting negotiation
Dawn: cancelling offer on "car"
Pete: cancelling offer on "car"
Dawn: offering "horse"
Pete: offering "manatee"
Dawn: other player cancelling offer on "car"
Pete: other player cancelling offer on "car"
Dawn: other player offering "manatee"
Pete: other player offering "horse"
Pete: asking if ready, waiting
other player ready to trade.
Dawn: other player ready to transfer goods:
you get ["manatee"], the other side gets ["horse"]
Pete: other side not ready yet
Dawn: cancelling trade, sending cancel event
Pete: received cancel event
4> 
=ERROR REPORT==== 15-Nov-2016::19:05:29 ===
** State machine <0.71.0> terminating 
** Last message in was {'$gen_sync_all_state_event',
                           {<0.70.0>,#Ref<0.0.1.301>},
                           cancel}
** When State == negotiate
**      Data  == {state,["Dawn"],
                        <0.73.0>,
                        ["horse"],
                        ["manatee"],
                        #Ref<0.0.1.283>,
                        {<0.70.0>,#Ref<0.0.1.279>}}
** Reason for termination = 
** cancelled

=ERROR REPORT==== 15-Nov-2016::19:05:29 ===
** State machine <0.73.0> terminating 
** Last event in was cancel (for all states)
** When State == wait
**      Data  == {state,["Pete"],
                        <0.71.0>,
                        ["manatee"],
                        ["horse"],
                        #Ref<0.0.1.285>,
                        {<0.72.0>,#Ref<0.0.1.296>}}
** Reason for termination = 
** other_cancelled

4> trade_calls:main_ef().
Spawned Carla: <0.76.0>
Spawned Ann: <0.78.0>
<0.77.0>
Ann: asking user <0.76.0> for a trade
Carla: <0.78.0> asked for a trade negotiation
Carla: accepting negotiation
Ann: starting negotiation
Ann: offering "boots"
Carla: other player offering "boots"
Ann: cancelling offer on "boots"
Carla: other player cancelling offer on "boots"
Carla: asking if ready, waiting
other player ready to trade.
Ann: other player ready to transfer goods:
you get [], the other side gets []
Carla: other side not ready yet
Ann: offering "shotgun"
Carla: other side offering "shotgun"
offer_changed
b synchronizing
Carla: offering "horse"
Ann: other player offering "horse"
Carla: offering "sword"
Ann: other player offering "sword"
a synchronizing
Carla: asking if ready, waiting
Ann: offering "horse"
Carla: other side offering "horse"
other player ready to trade.
Ann: other player ready to transfer goods:
you get ["sword","horse"], the other side gets ["horse","shotgun"]
<0.76.0> received unknown event not_yet while in state negotiate
Ann: asking if ready, waiting
other player ready to trade.
Carla: other player ready to transfer goods:
you get ["horse","shotgun"], the other side gets ["sword","horse"]
Ann: other side not ready yet
Carla: asking if ready, waiting
Ann: asked if ready, and I am. waiting for same reply
Carla: other side is ready. moving to ready state
Ann: other side is ready. moving to ready state
<0.76.0> received unknown event 'ready!' while in state ready
Ann: asking for commit
Carla: replying to ask_commit
Ann: ordering commit
Carla: committing...
transaction completed for Carla. items sent are:
["sword","horse"],
received are:
["horse","shotgun"].
this operation should have some atomic save in a database.
Carla: FSM leaving.
Ann: committing...
transaction completed for Ann. items sent are:
["horse","shotgun"],
received are:
["sword","horse"].
this operation should have some atomic save in a database.
Ann: FSM leaving.
5> 
