%% The contents of this file are subject to the Mozilla Public License
%% Version 1.1 (the "License"); you may not use this file except in
%% compliance with the License. You may obtain a copy of the License at
%% https://www.mozilla.org/MPL/
%%
%% Software distributed under the License is distributed on an "AS IS"
%% basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
%% License for the specific language governing rights and limitations
%% under the License.
%%
%% The Original Code is RabbitMQ.
%%
%% The Initial Developer of the Original Code is AWeber Communications.
%% Copyright (c) 2015-2016 AWeber Communications
%% Copyright (c) 2016-2020 VMware, Inc. or its affiliates. All rights reserved.
%%

-module(rabbitmq_peer_discovery_consul).
-behaviour(rabbit_peer_discovery_backend).

-export([init/0, list_nodes/0, supports_registration/0, register/0, unregister/0,
         post_registration/0, lock/1, unlock/1]).
-export([send_health_check_pass/0]).
-export([session_ttl_update_callback/1]).


-define(DELEGATE, rabbit_peer_discovery_consul).

%%
%% API
%%

init() ->
    ?DELEGATE:init().

-spec list_nodes() -> {ok, {Nodes :: list(), NodeType :: rabbit_types:node_type()}} | {error, Reason :: string()}.
list_nodes() ->
    ?DELEGATE:list_nodes().

-spec supports_registration() -> boolean().
supports_registration() ->
    ?DELEGATE:supports_registration().

-spec register() -> ok | {error, Reason :: string()}.
register() ->
    ?DELEGATE:register().

-spec unregister() -> ok | {error, Reason :: string()}.
unregister() ->
    ?DELEGATE:unregister().

-spec post_registration() -> ok.
post_registration() ->
    ?DELEGATE:post_registration().

-spec lock(Node :: atom()) -> {ok, Data :: term()} | {error, Reason :: string()}.
lock(Node) ->
    ?DELEGATE:lock(Node).

-spec unlock({SessionId :: string(), TRef :: timer:tref()}) -> ok.
unlock(Data) ->
    ?DELEGATE:unlock(Data).

-spec send_health_check_pass() -> ok.
send_health_check_pass() ->
    ?DELEGATE:send_health_check_pass().

-spec session_ttl_update_callback(string()) -> string().
session_ttl_update_callback(SessionId) ->
    ?DELEGATE:session_ttl_update_callback(SessionId).
