%%%---- BEGIN COPYRIGHT -------------------------------------------------------
%%%
%%% Copyright (C) 2012 Feuerlabs, Inc. All rights reserved.
%%%
%%% This Source Code Form is subject to the terms of the Mozilla Public
%%% License, v. 2.0. If a copy of the MPL was not distributed with this
%%% file, You can obtain one at http://mozilla.org/MPL/2.0/.
%%%
%%%---- END COPYRIGHT ---------------------------------------------------------
%%% @author Ulf Wiger <ulf@feuerlabs.com>
%% Rebar plugin for managing yang files
-module(exosense_rebar_plugin).

-export([post_compile/2,
	 clean/2]).

-spec post_compile(rebar_config:config(), _AppFile::file:filename()) -> 'ok'.
post_compile(Config, _AppFile) ->
    io:fwrite("~p:compile(...)~n", [?MODULE]),
    rebar_base_compiler:run(Config, [], "yang", ".yang", "priv/yang", ".eterm",
			    fun compile_yang/3, []).

-spec compile_yang(file:filename(), file:filename(),
                   rebar_config:config()) -> ok.
compile_yang(Source, Target, Config) ->
    %% io:fwrite("~p:compile(~s)~n", [?MODULE, Source]),
    ok = filelib:ensure_dir(Target),
    TargetDir = filename:dirname(Target),
    SrcBase = filename:basename(Source),
    case yang:parse_file(Source) of
	{ok, Y} ->
	    file:copy(Source, filename:join(TargetDir, SrcBase)),
	    file:write_file(Target, term_to_binary(Y));
	_Other ->
	    io:fwrite("~p:parse of ~s failed, reason ~p~n", [?MODULE, Source, _Other]),
	    throw({error, failed})
    end.


-spec clean(rebar_config:config(), _AppFile::file:filename()) -> 'ok'.
clean(_Config, _AppFile) ->
    Files1 = filelib:wildcard("priv/yang/*.eterm"),
    Files2 = filelib:wildcard("priv/yang/*.yang"),
    ok = rebar_file_utils:delete_each(Files1),
    ok = rebar_file_utils:delete_each(Files2).
