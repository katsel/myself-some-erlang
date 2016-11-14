%%% As a callback module, to use with my_server
-module(kitty_server2).

-export([
         start_link/0,
         order_cat/4,
         return_cat/2,
         close_shop/1
        ]).
-export([
         init/1,
         handle_call/3,
         handle_cast/2
        ]).

-record(cat, {name, color=green, description}).

%%% Client API
start_link() -> my_server:start_link(?MODULE, []).

order_cat(Pid, Name, Color, Description) ->  % synchronous
    my_server:call(Pid, {order, Name, Color, Description}).

return_cat(Pid, Cat = #cat{}) ->  % asynchronous
    my_server:cast(Pid, {return, Cat}).

close_shop(Pid) ->  % synchronous
    my_server:call(Pid, terminate).

%%% Server functions
init([]) -> [].

% kitty ordered
handle_call({order, Name, Color, Description}, From, Cats) ->
    if Cats =:= [] ->
        my_server:reply(From, make_cat(Name, Color, Description)),
        Cats;
       Cats =/= [] ->  % got to empty the stock
        my_server:reply(From, hd(Cats)),
        tl(Cats)
    end;
% shop terminated
handle_call(terminate, From, Cats) ->
    my_server:reply(From, ok),
    terminate(Cats).

% kitty returned
handle_cast({return, Cat=#cat{}}, Cats) ->
    [Cat|Cats].

%%% Private functions
make_cat(Name, Col, Desc) ->
    #cat{name=Name, color=Col, description=Desc}.

terminate(Cats) ->
    [io:format("~p was set free.~n", [C#cat.name]) || C <- Cats],
    ok.
