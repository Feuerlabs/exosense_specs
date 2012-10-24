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
%% Rebar plugin for generating Markdown docs from yang files
-module(exosense_doc_plugin).

-export([post_compile/2,
	 clean/2]).

-spec post_compile(rebar_config:config(), _AppFile::file:filename()) -> 'ok'.
post_compile(Config, _AppFile) ->
    rebar_base_compiler:run(Config, [], "yang", ".yang", "doc", ".md",
			    fun mk_markdown/3, []).

-spec mk_markdown(file:filename(), file:filename(),
		  rebar_config:config()) -> ok.
mk_markdown(Source, Target, Config) ->
    try mk_markdown_(Source, Target, Config)
    catch
	error:E ->
	    io:fwrite("ERROR ~p~n~p~n", [E, erlang:get_stacktrace()]),
	    throw(E)
    end.

mk_markdown_(Source, Target, Config) ->
    io:fwrite("~p:mk_markdown(~p, ...)~n", [?MODULE,Source]),
    ok = filelib:ensure_dir(Target),
    case yang_json:json_rpc(Source, yang_opts(Config)) of
	{error, _} = Err ->
	    io:fwrite("yang:json_rpc(~p) -> ~p~n", [Source,Err]),
	    throw(Err);
	[{module, Module, []}] ->
	    file:write_file(Target, <<"## Module: ",
				      (list_to_binary(Module))/binary, "\n\n",
				      "No RPCs defined.\n">>);
	JSON when is_list(JSON) ->
	    yang_json:markdown(Target, JSON)
    end.

-spec clean(rebar_config:config(), _AppFile::file:filename()) -> 'ok'.
clean(_Config, _AppFile) ->
    Files = filelib:wildcard("doc/*.md"),
    ok = rebar_file_utils:delete_each(Files).

yang_opts(Config) ->
    rebar_config:get(Config, yang_opts, []).
