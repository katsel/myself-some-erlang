%%% Naive version
-module(kitty_server).

-export([
         start_link/0,
         order_cat/4,
         return_cat/2,
         close_shop/1
        ]).

-record(cat, {name, color=green, description}).

%%% Client API
start_link() -> spawn_link(fun init/0).

order_cat(Pid, Name, Color, Description) ->  % synchronous
    Ref = erlang:monitor(process, Pid),
    Pid ! {self(), Ref, {order, Name, Color, Description}},
    receive
        {Ref, Cat} ->
            erlang:demonitor(Ref, [flush]),
            Cat;
        {'DOWN', Ref, process, Pid, Reason} ->
            erlang:error(Reason)
    after 5000 ->
        erlang:error(timeout)
    end.

return_cat(Pid, Cat = #cat{}) ->  % asynchronous
    Pid ! {return, Cat},
    ok.

close_shop(Pid) ->  % synchronous
    Ref = erlang:monitor(process, Pid),
    Pid ! {self(), Ref, terminate},
    receive
        {Ref, ok} ->
            erlang:demonitor(Ref, [flush]),
            ok;
        {'DOWN', Ref, process, Pid, Reason} ->
            erlang:error(Reason)
    after 5000 ->
        erlang:error(timeout)
    end.

%%% Server functions
init() -> loop([]).

loop(Cats) ->
    receive
        % kitty ordered
        {Pid, Ref, {order, Name, Color, Description}} ->
            if Cats =:= [] ->
                Pid ! {Ref, make_cat(Name, Color, Description)},
                loop(Cats);
               Cats =/= [] ->  % got to empty the stock
                Pid ! {Ref, hd(Cats)},
                loop(tl(Cats))
            end;
        % kitty returned
        {return, Cat=#cat{}} ->
            loop([Cat|Cats]);
        % shop terminated
        {Pid, Ref, terminate} ->
            Pid ! {Ref, terminate(Cats)};
        % unknown message received
        Unknown ->
            io:format("Unknown message: ~p~n", [Unknown]),  % logging
            loop(Cats)
    end.

%%% Private functions
make_cat(Name, Col, Desc) ->
    #cat{name=Name, color=Col, description=Desc}.

terminate(Cats) ->
    [io:format("~p was set free.~n", [C#cat.name]) || C <- Cats],
    ok.
