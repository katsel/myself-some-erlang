1> 2+15
1> 2+15.
* 3: syntax error before: 2
1> 2+15.
17
2> 49*1000.
49000
3> 1892 - 1472.
420
4> 5 / 2.
2.5
5> 5 div 2.
2
6> 5 rem 2. 
1
7> 5 div 2 + ( 5 rem 2) / 2
7> 5 div 2 + (5 rem 2) / 2.
* 2: syntax error before: 5
7> 5 div 2
7> 5 div 2.
* 2: syntax error before: 5
7> 5 div 2.
2
8> 5 div 2 + 1.
3
9> 5 div ( 2 + 1 ).
1
10> 5 div (2 + 1).
1
11> 5 div 2 + (5 rem 2 )/ 2
11> 5 div 2 + (5 rem 2) / 2.
* 2: syntax error before: 5
11> 5 div 2
11> 5 div 2.
* 2: syntax error before: 5
11> 5 div 2.
2
12> 5 div 2 + (5 rem 2) 
12> 5 div 2 + (5 rem 2).
* 2: syntax error before: 5
12> (5 rem 2).
1
13> 5 div 2 + (5 rem 2).
3
14> 5 div 2 + (5 rem 2) / 2.
2.5
15> 16#A
15> 16#A.
* 2: syntax error before: 10
15> 16#A.
10
16> One.
* 1: variable 'One' is unbound
17> One = 1.
1
18> Un = Uno = One = 1
18> Un = Uno = One = 1.
* 2: syntax error before: Un
18> Un = Uno = One = 1.
1
19> Two = One + One
19> .
2
20> Two
20> .
2
21> Two = Two + 1.
** exception error: no match of right hand side value 3
22> 48 = 45 + 3.
48
23> 48 = 45 + 2.
** exception error: no match of right hand side value 47
24> Un.
1
25> f(Un).
ok
26> Un.
* 1: variable 'Un' is unbound
27> atom.
atom
28> atom = btom.
** exception error: no match of right hand side value btom
29> atom = 'btom'.
** exception error: no match of right hand side value btom
30> true xor true.
false
31> 5 =:= 5.
true
32> 5 <= 5.
* 1: syntax error before: '<='
32> 5 => 5.
* 1: syntax error before: '=>'
32> 5 + llama.
** exception error: an error occurred when evaluating an arithmetic expression
     in operator  +/2
        called as 5 + llama
33> 5 =:= true.
false
34> 5 == true. 
false
35> 1 =:= true.
false
36> 5 =:= lama.
false
37> lama.
lama
38> 0 == false.
false
39> 0 =:= false.
false
40> 0 < false.
true
41> 0 > false.
false
42> 1 > false.
false
43> -1 > false.
false
44> 3 < false. 
true
45> Point = {4,5}.
{4,5}
46> {X,Y} = Point.
{4,5}
47> X.
4
48> Y.
5
49> {X,_} = Point.
{4,5}
50> Point.
{4,5}
51> X
51> .
4
52> Y.
5
53> _.
* 1: variable '_' is unbound
54> {X,Y} = {4,5}.
{4,5}
55> {4,5} = {4,5}.
{4,5}
56> {A,2} = {B,1}.
* 1: variable 'B' is unbound
57> {A,2} = {1,B}.
* 1: variable 'B' is unbound
58> {A,2} = {1,3}.
** exception error: no match of right hand side value {1,3}
59> {A,2} = {1,2}.
{1,2}
60> A
60> {1,B} = {A,2}.
* 2: syntax error before: '{'
60> {1,B} = {A,2}.
{1,2}
61> {1,C} = {D,2}.
* 1: variable 'D' is unbound
62> C
62> .
* 1: variable 'C' is unbound
63> Temperature = 23.123.
23.123
64> PreciseTemperature = {celsius, 23.213}.
{celsius,23.213}
65> {kelvin, T} = PreciseTemperature.
** exception error: no match of right hand side value {celsius,23.213}
66> {celsius, T} = PreciseTemperature.
{celsius,23.213}
67> T
67> .
23.213
68> T = Temperature.
** exception error: no match of right hand side value 23.123
69> Temperature
69> .
23.123
70> T == Temperature.
false
71> T =:= Temperature.
false
72> T.
23.213
73> Temperature.
23.123
74> f(T).
ok
75> PreciseTemperature = {celsius, 23.123}.
** exception error: no match of right hand side value {celsius,23.123}
76> f(PreciseTemperature).
ok
77> PreciseTemperature = {celsius, 23.123}.
{celsius,23.123}
78> T =:= Temperature.                     
* 1: variable 'T' is unbound
79> T = 23.123.
23.123
80> T =:= Temperature.
true
81> T == Temperature. 
true
82> [96, 97, 98].
"`ab"
83> [233].
"é"
84> 99.
99
85> hd([1,2,3,4]).
1
86> tl([1,2,3,4]).
[2,3,4]
87> length([1,2,3,4]).
4
88> List = [2,3,4].
[2,3,4]
89> NewList = [1|List].
[1,2,3,4]
90> NewList.
[1,2,3,4]
91> NewList = [1,2|List].
** exception error: no match of right hand side value [1,2,2,3,4]
92> NewList2 = [1,2|List].
[1,2,2,3,4]
93> [Hd2|Tl2] = NewList2
93> .
[1,2,2,3,4]
94> Hd2.
1
95> Tl2.
[2,2,3,4]
96> ImproperList = [1|2].
[1|2]
97> ImproperList.
[1|2]
98> length(ImproperList).
** exception error: bad argument
     in function  length/1
        called as length([1|2])
99> length(ImproperList|[])
99> .
* 1: syntax error before: '|'
99> length([ImproperList|[]]).
1
100> MaybeProperList = [ImproperList|[]].
[[1|2]]
101> MaybeProperList2 = ImproperList ++ []. 
** exception error: bad argument
     in operator  ++/2
        called as [1|2] ++ []
102> MaybeProperList2 = [1,2] ++ [].       
[1,2]
103> MaybeProperList3 = [1,2] ++ [3].
[1,2,3]
104> [2*N || N <-[1,2,3,4,5,6,7,8]].
[2,4,6,8,10,12,14,16]
105> [N**2 || N <-[1,2,3,4,5,6,7,8]].
* 1: syntax error before: '*'
105> [N^2 || N <-[1,2,3,4,5,6,7,8]]. 
* 1: syntax error before: '^'
105> [N*N || N <-[1,2,3,4,5,6,7,8]].
[1,4,9,16,25,36,49,64]
106> pow(10).
** exception error: undefined shell command pow/1
107> [X || X <- [1,2,3,4,5,6,7,8,9,10], X rem 2 =:= 2].
[]
108> [X || X <- [1,2,3,4,5,6,7,8,9,10], X rem 2 =:= 2].
[]
109> [X || X <- [1,2,3,4,5,6,7,8,9,10], X rem 2 =:= 0].
[2,4,6,8,10]
110> [X || X <- [1,2,3,4,5,6,7,8,9,10], X rem 2 =:= 1].
[1,3,5,7,9]
111> RestaurantMenu = [{steak, 5.99}, {beer, 3.99}, {poutine, 3.50}, {kitten, 20.99}, {water, 0.00}].
[{steak,5.99},
 {beer,3.99},
 {poutine,3.5},
 {kitten,20.99},
 {water,0.0}]
112> [{Item, Price*1.07} || {item, Price} <- RestaurantMenu, Price >= 3, Price =< 10].
* 1: variable 'Item' is unbound
113> [{Item, Price*1.07} || {Item, Price} <- RestaurantMenu, Price >= 3, Price =< 10].
[{steak,6.409300000000001},{beer,4.2693},{poutine,3.745}]
114> [X+Y || X <- [1,2], Y <- [2,3]].
[3,4,4,5]
115> [X+Y || X <- [1,2], Y <- [3,4]].
[4,5,5,6]
116> [X+Y || X <- [1,2], Y <- [3,6]].
[4,7,5,8]
117> Weather = [{toronto, rain}, {montreal, storms}, {london, fog}, {paris, sun}, {boston, fog}, {vancouver, snow}].
[{toronto,rain},
 {montreal,storms},
 {london,fog},
 {paris,sun},
 {boston,fog},
 {vancouver,snow}]
118> FoggyPlaces = [X || {X, fog} <- Weather].
[london,boston]
119> Color = 16#F09A29
119> .
15768105
120> <<Color:24>>.
<<240,154,41>>
121> <<Color:3>>. 
<<1:3>>
122> <<Color:12>>.
<<162,9:4>>
123> <<Color:25>>.
<<120,77,20,1:1>>
124> <<Color:24>>.
<<240,154,41>>
125> Pixel = <<Color:24>>.
<<240,154,41>>
126> Pixels = <<213,45,132,64,76,32,76,0,0,234,32,15>>.
<<213,45,132,64,76,32,76,0,0,234,32,15>>
127> <<Pix1,Pix2,Pix3,Pix4>> = Pixels.
** exception error: no match of right hand side value <<213,45,132,64,76,32,76,
                                                        0,0,234,32,15>>
128> <<Pix1:24,Pix2:24,Pix3:24,Pix4:24>> = Pixels.
<<213,45,132,64,76,32,76,0,0,234,32,15>>
129> Pix1.
13970820
130> Pix2.
4213792
131> Pix1:24.
* 1: illegal expression
132> <<Pix1:24>>.
<<213,45,132>>
133> <<Pix2:24>>.
<<"@L ">>
134> [64,76,32]
134> .
"@L "
135> <<Pix3:24>>.
<<76,0,0>>
136> <<Pix4:24>>.
<<234,32,15>>
137> <<Pix5:24>>.
* 1: variable 'Pix5' is unbound
138> <<R:8, G:8, B:8>> = Pix1.
** exception error: no match of right hand side value 13970820
139> <<R:8, G:8, B:8>> = <<Pix1:24>>.
** exception error: no match of right hand side value <<213,45,132>>
140> <<R:8, G:8, B:8>> = <<Pix1:24>>.
** exception error: no match of right hand side value <<213,45,132>>
141> R.
* 1: variable 'R' is unbound
142> G.
* 1: variable 'G' is unbound
143> B.
2
144> f(B).
ok
145> <<R:8, G:8, B:8>> = <<Pix1:24>>.
<<213,45,132>>
146> R.
213
147> G.
45
148> B.
132
149> Pix1.
13970820
150> f(R).
ok
151> <<R:8, Rest/binary>> = Pixels.
<<213,45,132,64,76,32,76,0,0,234,32,15>>
152> R.
213
153> Rest.
<<45,132,64,76,32,76,0,0,234,32,15>>
154> <<Pixels:24>>
154> .
** exception error: bad argument
155> <<Pixels>>   
155> .
** exception error: bad argument
156> Pixels.
<<213,45,132,64,76,32,76,0,0,234,32,15>>
157> f(R).
ok
158> <<R:8, _/binary>> = Pixels.   
<<213,45,132,64,76,32,76,0,0,234,32,15>>
159> R.
213
160> Rest.
<<45,132,64,76,32,76,0,0,234,32,15>>
161> Pixels.
<<213,45,132,64,76,32,76,0,0,234,32,15>>
162> <<X1/unsigned>> = <<-44>>  
162> .
<<"Ô">>
163> X1.                      
212
164> <<X2/signed>> = <<-44>>.
<<"Ô">>
165> X2.
-44
166> <<X2/integer-signed-little>> = <<-44>>.
<<"Ô">>
167> X2.
-44
168> <<N:8/unit:1>> = <</2>>.
* 1: syntax error before: '/'
168> <<N:8/unit:1>> = <<72>>.
<<"H">>
169> N.
72
170> <<N:8>>.
<<"H">>
171> N.
72
172> <<N/integer>> 
172> .
<<"H">>
173> <<N/integer>> = <<72>>.
<<"H">>
174> <<Y:4/little-unit:8>> = <<72,0,0,0>>.
** exception error: no match of right hand side value <<72,0,0,0>>
175> Y.
5
176> f(Y).
ok
177> <<Y:4/little-unit:8>> = <<72,0,0,0>>.
<<72,0,0,0>>
178> Y.
72
179> N =:= Y.
true
180> 2#00100 = 2#00010 bsl 1.
4
181> 2#00100 = 2#00100 bsl 1.
** exception error: no match of right hand side value 8
182> 2#00100 = 2#00100 bsl 2.
** exception error: no match of right hand side value 16
183> 2#00100 = 2#00100 bsl 0.
4
184> 2#00100 = 2#00001 bsl 2.
4
185> 2#10101 = 2#10001 bor 2#00101.
21
186> 2#10001 bor 2#00101.          
21
187> <<2:2#10001 bor 2#00101>>.
* 1: syntax error before: 'bor'
187> <<2#10001 bor 2#00101>>.  
* 1: syntax error before: 'bor'
187> 2#10001 bor 2#00101.      
21
188> BinZ = 2#10001 bor 2#00101.
21
189> 2#BinZ
* 1: illegal integer
189> 2#BinZ.
* 1: illegal integer
189> BinZ
189> .
21
190> <<8:BinZ>>
190> .
<<0,0,8:5>>
191> <<2:BinZ>>
191> .
<<0,0,2:5>>
192> [X || <<X>> <= <<1,2,3,4,5,6>>, X rem 2 == 0]. 
[2,4,6]
193> Pixels.
<<213,45,132,64,76,32,76,0,0,234,32,15>>
194> RGB = [ {R, G, B} || <<R:8, G:8, B:8>> <= Pixels ].
[{213,45,132},{64,76,32},{76,0,0},{234,32,15}]
195> R.                                                 
213
196> G.
45
197> B.
132
198> f(R, G, B)
198> .
** exception error: undefined shell command f/3
199> f(R).     
ok
200> f(G).
ok
201> f(B).
ok
202> RGB = [ {R, G, B} || <<R:8, G:8, B:8>> <= Pixels ].
[{213,45,132},{64,76,32},{76,0,0},{234,32,15}]
203> R.
* 1: variable 'R' is unbound
204> RGB.
[{213,45,132},{64,76,32},{76,0,0},{234,32,15}]
205> << << R:8, G:8, B:8 >> || {R, G, B} <- RGB >>.
<<213,45,132,64,76,32,76,0,0,234,32,15>>
206> << << R:8, G:8, B:8 >> || {R, G, B} <- RGB >> = Pixels. 
* 1: illegal pattern
207> << << R:8, G:8, B:8 >> || {R, G, B} <- RGB >>.         
<<213,45,132,64,76,32,76,0,0,234,32,15>>
208> Pixels = << << R:8, G:8, B:8 >> || {R, G, B} <- RGB >>.
<<213,45,132,64,76,32,76,0,0,234,32,15>>
209> Pixels.
<<213,45,132,64,76,32,76,0,0,234,32,15>>
210> << << R:8, G:8, B:8 >> || {R, G, B} <- RGB >> =:= Pixels.
true
