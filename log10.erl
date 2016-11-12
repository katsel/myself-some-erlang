8> c(records).
{ok,records}
9> records:first_robot().
{robot,"Mechatron",handmade,undefined,
       ["Moved by a small man inside"]}
10> rr(records).
[robot]
11> records:first_robot().
#robot{name = "Mechatron",type = handmade,
       hobbies = undefined,
       details = ["Moved by a small man inside"]}
12> c(records).           
{ok,records}
13> records:first_robot().
#robot{name = "Mechatron",type = handmade,
       hobbies = undefined,
       details = ["Moved by a small man inside"]}
14> records:car_factory("Jokeswagen").
#robot{name = "Jokeswagen",type = industrial,
       hobbies = "building cars",details = []}
15> Crusher = #robot{name="Crusher", hobbies=["Crushing people","petting cats"]}.
#robot{name = "Crusher",type = industrial,
       hobbies = ["Crushing people","petting cats"],
       details = []}
16> Crusher.
#robot{name = "Crusher",type = industrial,
       hobbies = ["Crushing people","petting cats"],
       details = []}
17> Crusher#robot.hobbies.
["Crushing people","petting cats"]
18> NestedBot = #robot{details=#robot{name="erNest"}}.
#robot{name = undefined,type = industrial,
       hobbies = undefined,
       details = #robot{name = "erNest",type = industrial,
                        hobbies = undefined,details = []}}
19> (NestedBot#robot.details)#robot.name.
"erNest"
20> #robot.type.
3
21> #robot.
* 1: syntax error before: '.'
21> #robot 
21> .
* 2: syntax error before: '.'
21> c(records).
{ok,records}
22> rr(records).
[robot,user]
23> records:admin_panel(#user{id=1, name="ferd", group=admin, age=96}).
"ferd is allowed!"
24> records:admin_panel(#user{id=2, name="you", group=users, age=66}). 
"you is not allowed"
25> records:adult_section(#user{id=21, name="Bill", group=users, age=72}).
allowed
26> records:adult_section(#user{id=22, name="Noah", group=users, age=13}).
forbitten
27> c(records).                                                           
{ok,records}
28> records:adult_section(#user{id=22, name="Noah", group=users, age=13}).
forbidden
29> c(records).                                                           
{ok,records}
30> records:repairperson(#robot{name="Ulbert", hobbies=["trying to have feelings"]}),
30> .
* 2: syntax error before: '.'
30> records:repairperson(#robot{name="Ulbert", hobbies=["trying to have feelings"]}).
{repaired,#robot{name = "Ulbert",type = industrial,
                 hobbies = ["trying to have feelings"],
                 details = ["Repaired by repairperson"]}}
31> c(records).                                                                 records.erl:2: can't find include file "records.hrl"
error
32> c(records).
{ok,records}
33> rr(records).
[included,robot,user]
34> records:included().
** exception error: undefined function records:included/0
35> records:
admin_panel/1    adult_section/1  car_factory/1    first_robot/0    
module_info/0    module_info/1    repairperson/1   
35> rr(records).       
[included,robot,user]
36> records:included().
** exception error: undefined function records:included/0
