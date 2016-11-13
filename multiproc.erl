-module(multiproc).
-compile(export_all).

sleep(T) ->
    receive         % receive nothing
    after T -> ok   % called once delay T has passed
    end.

%% flush all messages in inbox (do nothing)
flush() ->
    receive
        _ -> flush()
    after 0 ->
        ok
    end.

%% selective receives
important() ->
    receive
        {Priority, Message} when Priority > 10 ->
            [Message | important()]
    after 0 ->
        normal()
    end.

normal() ->
    receive
        {_, Message} ->
            [Message | normal()]
        after 0 ->
            []
        end.
