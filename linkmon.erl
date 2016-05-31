-module(linkmon).
-export([myproc/0, chain/1, start_critic/0, judge/3, critic/0,
        start_critic2/0, restarter/0, judge2/2]).

myproc() ->
    timer:sleep(5000),
    exit(reason).

chain(0) ->
    receive
        _ ->
        ok
    after 2000 ->
        exit("chain dies here")
    end;
chain(N) ->
    timer:sleep(1000),
    Pid = spawn(fun() -> chain(N-1) end),
    link(Pid),
    receive
        _ -> ok
    end.

%% Naming processes
start_critic() ->
    spawn(?MODULE, critic, []).

judge(Pid, Band, Album) ->
    Pid ! {self(), {Band, Album}},
    receive
        {Pid, Criticism} -> Criticism
    after 2000 ->
        timeout
    end.

critic() ->
    receive
        {From, {_Band, _Album}} ->
            From ! {self(), "They are terrible!"}
    end,
    critic().

%% restart process after it goes down
start_critic2() ->
    spawn(?MODULE, restarter, []).

restarter() ->
    process_flag(trap_exit, true),
    Pid = spawn_link(?MODULE, critic, []),
    register(critic, Pid),
    receive
        {'EXIT', Pid, normal} -> % not a crash
            ok;
        {'EXIT', Pid, shutdown} -> % manual termination, not a crash
            ok;
        {'EXIT', Pid, _} ->
            restarter()
    end.

judge2(Band, Album) ->
    critic ! {self(), {Band, Album}},
    Pid = whereis(critic),
    receive
        {Pid, Criticism} -> Criticism
    after 2000 ->
        timeout
    end.
