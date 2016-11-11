41> Pets = #{"dog" => "winston", "fish" => "mrs.blub"}.
#{"dog" => "winston","fish" => "mrs.blub"}
42> #{"fish" := CatName, "dog" := DogName} = Pets.
#{"dog" => "winston","fish" => "mrs.blub"}
43> Pets.
#{"dog" => "winston","fish" => "mrs.blub"}
44> CatName.
"mrs.blub"
45> DogName.
"winston"
46> Pets#{"dog":="chester"}.
#{"dog" => "chester","fish" => "mrs.blub"}
47> Pets.
#{"dog" => "winston","fish" => "mrs.blub"}
48> Pets#{dog:="chester"}.  
** exception error: {badkey,dog}
     in function  maps:update/3
        called as maps:update(dog,"chester",
                              #{"dog" => "winston","fish" => "mrs.blub"})
     in call from erl_eval:'-expr/5-fun-0-'/2 (erl_eval.erl, line 255)
     in call from lists:foldl/3 (lists.erl, line 1262)
49> #{"favorte" := Animal, Animal := Name} = Pets#{"favorite" := "dog"}.
* 1: variable 'Animal' is unbound
50> Animal.
* 1: variable 'Animal' is unbound
51> Name.
* 1: variable 'Name' is unbound
52> Weather = #{toronto => rain, montreal => storms, london => fog,       
52> paris => sun, boston => fog, vancouver => snow}.
#{boston => fog,
  london => fog,
  montreal => storms,
  paris => sun,
  toronto => rain,
  vancouver => snow}
53> FoggyPlaces = [X || X := fog <- Weather].
* 1: syntax error before: ':='
53> #{X => foggy || X <- [london,boston]}.
* 1: syntax error before: '||'
53> 
