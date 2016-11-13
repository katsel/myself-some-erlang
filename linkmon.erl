-module(linkmon).
-export([myproc/0, chain/1, start_critic/0, judge/3, critic/0,
        start_critic2/0, restarter/0, judge2/2, critic2/0]).

%% states reason for crashing to linked process
myproc() ->
    timer:sleep(5000),
    exit(reason).

%% start N linked processes
chain(0) ->
    receive
        _ ->
        ok
    after 2000 ->
        exit("chain dies here")
    end;
chain(N) ->
    timer:sleep(1000),
    Pid = spawn(fun() -> chain(N - 1) end),
    link(Pid),
    receive
        _ -> ok
    end.

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
    Pid = spawn_link(?MODULE, critic2, []),
    % link process to atom 'critic' - name the process
    register(critic, Pid),
    receive
        {'EXIT', Pid, normal} -> % not a crash
            ok;
        {'EXIT', Pid, shutdown} -> % manual termination, not a crash
            ok;
        {'EXIT', Pid, _} ->
            restarter()
    end.

%% PID of receiver process can change - use Ref to identify messages
judge2(Band, Album) ->
    Ref = make_ref(),
    critic ! {self(), Ref, {Band, Album}},
    receive
        {Ref, Criticism} -> Criticism
    after 2000 ->
        timeout
    end.

critic2() ->
    receive
        {From, Ref, {_Band, _Album}} ->
            From ! {Ref, "They are terrible!"}
    end,
    critic2().
