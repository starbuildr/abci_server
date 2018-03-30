%% -*- coding: utf-8 -*-
%% Automatically generated, do not edit
%% Generated by gpb_compile version 4.0.2

-ifndef(abci).
-define(abci, true).

-define(abci_gpb_version, "4.0.2").

-ifndef('REQUESTDELIVERTX_PB_H').
-define('REQUESTDELIVERTX_PB_H', true).
-record('RequestDeliverTx',
        {tx = <<>>              :: binary() | undefined % = 1
        }).
-endif.

-ifndef('KI64PAIR_PB_H').
-define('KI64PAIR_PB_H', true).
-record('KI64Pair',
        {key = <<>>             :: binary() | undefined, % = 1
         value = 0              :: integer() | undefined % = 2, 32 bits
        }).
-endif.

-ifndef('KVPAIR_PB_H').
-define('KVPAIR_PB_H', true).
-record('KVPair',
        {key = <<>>             :: binary() | undefined, % = 1
         value = <<>>           :: binary() | undefined % = 2
        }).
-endif.

-ifndef('RESPONSEDELIVERTX_PB_H').
-define('RESPONSEDELIVERTX_PB_H', true).
-record('ResponseDeliverTx',
        {code = 0               :: non_neg_integer() | undefined, % = 1, 32 bits
         data = <<>>            :: binary() | undefined, % = 2
         log = []               :: iolist() | undefined, % = 3
         info = []              :: iolist() | undefined, % = 4
         gas_wanted = 0         :: integer() | undefined, % = 5, 32 bits
         gas_used = 0           :: integer() | undefined, % = 6, 32 bits
         tags = []              :: [#'KVPair'{}] | undefined, % = 7
         fee = undefined        :: #'KI64Pair'{} | undefined % = 8
        }).
-endif.

-ifndef('RESPONSEFLUSH_PB_H').
-define('RESPONSEFLUSH_PB_H', true).
-record('ResponseFlush',
        {
        }).
-endif.

-ifndef('RESPONSECOMMIT_PB_H').
-define('RESPONSECOMMIT_PB_H', true).
-record('ResponseCommit',
        {data = <<>>            :: binary() | undefined % = 2
        }).
-endif.

-ifndef('REQUESTCHECKTX_PB_H').
-define('REQUESTCHECKTX_PB_H', true).
-record('RequestCheckTx',
        {tx = <<>>              :: binary() | undefined % = 1
        }).
-endif.

-ifndef('EVIDENCE_PB_H').
-define('EVIDENCE_PB_H', true).
-record('Evidence',
        {pub_key = <<>>         :: binary() | undefined, % = 1
         height = 0             :: integer() | undefined % = 2, 32 bits
        }).
-endif.

-ifndef('RESPONSEINFO_PB_H').
-define('RESPONSEINFO_PB_H', true).
-record('ResponseInfo',
        {data = []              :: iolist() | undefined, % = 1
         version = []           :: iolist() | undefined, % = 2
         last_block_height = 0  :: integer() | undefined, % = 3, 32 bits
         last_block_app_hash = <<>> :: binary() | undefined % = 4
        }).
-endif.

-ifndef('RESPONSECHECKTX_PB_H').
-define('RESPONSECHECKTX_PB_H', true).
-record('ResponseCheckTx',
        {code = 0               :: non_neg_integer() | undefined, % = 1, 32 bits
         data = <<>>            :: binary() | undefined, % = 2
         log = []               :: iolist() | undefined, % = 3
         info = []              :: iolist() | undefined, % = 4
         gas_wanted = 0         :: integer() | undefined, % = 5, 32 bits
         gas_used = 0           :: integer() | undefined, % = 6, 32 bits
         tags = []              :: [#'KVPair'{}] | undefined, % = 7
         fee = undefined        :: #'KI64Pair'{} | undefined % = 8
        }).
-endif.

-ifndef('PARTSETHEADER_PB_H').
-define('PARTSETHEADER_PB_H', true).
-record('PartSetHeader',
        {total = 0              :: integer() | undefined, % = 1, 32 bits
         hash = <<>>            :: binary() | undefined % = 2
        }).
-endif.

-ifndef('BLOCKID_PB_H').
-define('BLOCKID_PB_H', true).
-record('BlockID',
        {hash = <<>>            :: binary() | undefined, % = 1
         parts = undefined      :: #'PartSetHeader'{} | undefined % = 2
        }).
-endif.

-ifndef('HEADER_PB_H').
-define('HEADER_PB_H', true).
-record('Header',
        {chain_id = []          :: iolist() | undefined, % = 1
         height = 0             :: integer() | undefined, % = 2, 32 bits
         time = 0               :: integer() | undefined, % = 3, 32 bits
         num_txs = 0            :: integer() | undefined, % = 4, 32 bits
         last_block_id = undefined :: #'BlockID'{} | undefined, % = 5
         last_commit_hash = <<>> :: binary() | undefined, % = 6
         data_hash = <<>>       :: binary() | undefined, % = 7
         validators_hash = <<>> :: binary() | undefined, % = 8
         app_hash = <<>>        :: binary() | undefined % = 9
        }).
-endif.

-ifndef('REQUESTENDBLOCK_PB_H').
-define('REQUESTENDBLOCK_PB_H', true).
-record('RequestEndBlock',
        {height = 0             :: integer() | undefined % = 1, 32 bits
        }).
-endif.

-ifndef('RESPONSEBEGINBLOCK_PB_H').
-define('RESPONSEBEGINBLOCK_PB_H', true).
-record('ResponseBeginBlock',
        {
        }).
-endif.

-ifndef('RESPONSEECHO_PB_H').
-define('RESPONSEECHO_PB_H', true).
-record('ResponseEcho',
        {message = []           :: iolist() | undefined % = 1
        }).
-endif.

-ifndef('BLOCKGOSSIP_PB_H').
-define('BLOCKGOSSIP_PB_H', true).
-record('BlockGossip',
        {block_part_size_bytes = 0 :: integer() | undefined % = 1, 32 bits
        }).
-endif.

-ifndef('TXSIZE_PB_H').
-define('TXSIZE_PB_H', true).
-record('TxSize',
        {max_bytes = 0          :: integer() | undefined, % = 1, 32 bits
         max_gas = 0            :: integer() | undefined % = 2, 32 bits
        }).
-endif.

-ifndef('BLOCKSIZE_PB_H').
-define('BLOCKSIZE_PB_H', true).
-record('BlockSize',
        {max_bytes = 0          :: integer() | undefined, % = 1, 32 bits
         max_txs = 0            :: integer() | undefined, % = 2, 32 bits
         max_gas = 0            :: integer() | undefined % = 3, 32 bits
        }).
-endif.

-ifndef('CONSENSUSPARAMS_PB_H').
-define('CONSENSUSPARAMS_PB_H', true).
-record('ConsensusParams',
        {block_size = undefined :: #'BlockSize'{} | undefined, % = 1
         tx_size = undefined    :: #'TxSize'{} | undefined, % = 2
         block_gossip = undefined :: #'BlockGossip'{} | undefined % = 3
        }).
-endif.

-ifndef('VALIDATOR_PB_H').
-define('VALIDATOR_PB_H', true).
-record('Validator',
        {pub_key = <<>>         :: binary() | undefined, % = 1
         power = 0              :: integer() | undefined % = 2, 32 bits
        }).
-endif.

-ifndef('RESPONSEENDBLOCK_PB_H').
-define('RESPONSEENDBLOCK_PB_H', true).
-record('ResponseEndBlock',
        {validator_updates = [] :: [#'Validator'{}] | undefined, % = 1
         consensus_param_updates = undefined :: #'ConsensusParams'{} | undefined % = 2
        }).
-endif.

-ifndef('RESPONSEQUERY_PB_H').
-define('RESPONSEQUERY_PB_H', true).
-record('ResponseQuery',
        {code = 0               :: non_neg_integer() | undefined, % = 1, 32 bits
         log = []               :: iolist() | undefined, % = 3
         info = []              :: iolist() | undefined, % = 4
         index = 0              :: integer() | undefined, % = 5, 32 bits
         key = <<>>             :: binary() | undefined, % = 6
         value = <<>>           :: binary() | undefined, % = 7
         proof = <<>>           :: binary() | undefined, % = 8
         height = 0             :: integer() | undefined % = 9, 32 bits
        }).
-endif.

-ifndef('RESPONSEINITCHAIN_PB_H').
-define('RESPONSEINITCHAIN_PB_H', true).
-record('ResponseInitChain',
        {
        }).
-endif.

-ifndef('RESPONSESETOPTION_PB_H').
-define('RESPONSESETOPTION_PB_H', true).
-record('ResponseSetOption',
        {code = 0               :: non_neg_integer() | undefined, % = 1, 32 bits
         log = []               :: iolist() | undefined, % = 3
         info = []              :: iolist() | undefined % = 4
        }).
-endif.

-ifndef('RESPONSEEXCEPTION_PB_H').
-define('RESPONSEEXCEPTION_PB_H', true).
-record('ResponseException',
        {error = []             :: iolist() | undefined % = 1
        }).
-endif.

-ifndef('RESPONSE_PB_H').
-define('RESPONSE_PB_H', true).
-record('Response',
        {value                  :: {exception, #'ResponseException'{}} | {echo, #'ResponseEcho'{}} | {flush, #'ResponseFlush'{}} | {info, #'ResponseInfo'{}} | {set_option, #'ResponseSetOption'{}} | {init_chain, #'ResponseInitChain'{}} | {query, #'ResponseQuery'{}} | {begin_block, #'ResponseBeginBlock'{}} | {check_tx, #'ResponseCheckTx'{}} | {deliver_tx, #'ResponseDeliverTx'{}} | {end_block, #'ResponseEndBlock'{}} | {commit, #'ResponseCommit'{}} | undefined % oneof
        }).
-endif.

-ifndef('REQUESTBEGINBLOCK_PB_H').
-define('REQUESTBEGINBLOCK_PB_H', true).
-record('RequestBeginBlock',
        {hash = <<>>            :: binary() | undefined, % = 1
         header = undefined     :: #'Header'{} | undefined, % = 2
         absent_validators = [] :: [integer()] | undefined, % = 3, 32 bits
         byzantine_validators = [] :: [#'Evidence'{}] | undefined % = 4
        }).
-endif.

-ifndef('REQUESTSETOPTION_PB_H').
-define('REQUESTSETOPTION_PB_H', true).
-record('RequestSetOption',
        {key = []               :: iolist() | undefined, % = 1
         value = []             :: iolist() | undefined % = 2
        }).
-endif.

-ifndef('REQUESTINFO_PB_H').
-define('REQUESTINFO_PB_H', true).
-record('RequestInfo',
        {version = []           :: iolist() | undefined % = 1
        }).
-endif.

-ifndef('REQUESTCOMMIT_PB_H').
-define('REQUESTCOMMIT_PB_H', true).
-record('RequestCommit',
        {
        }).
-endif.

-ifndef('REQUESTQUERY_PB_H').
-define('REQUESTQUERY_PB_H', true).
-record('RequestQuery',
        {data = <<>>            :: binary() | undefined, % = 1
         path = []              :: iolist() | undefined, % = 2
         height = 0             :: integer() | undefined, % = 3, 32 bits
         prove = false          :: boolean() | 0 | 1 | undefined % = 4
        }).
-endif.

-ifndef('REQUESTINITCHAIN_PB_H').
-define('REQUESTINITCHAIN_PB_H', true).
-record('RequestInitChain',
        {validators = []        :: [#'Validator'{}] | undefined, % = 1
         app_state_bytes = <<>> :: binary() | undefined % = 2
        }).
-endif.

-ifndef('REQUESTFLUSH_PB_H').
-define('REQUESTFLUSH_PB_H', true).
-record('RequestFlush',
        {
        }).
-endif.

-ifndef('REQUESTECHO_PB_H').
-define('REQUESTECHO_PB_H', true).
-record('RequestEcho',
        {message = []           :: iolist() | undefined % = 1
        }).
-endif.

-ifndef('REQUEST_PB_H').
-define('REQUEST_PB_H', true).
-record('Request',
        {value                  :: {echo, #'RequestEcho'{}} | {flush, #'RequestFlush'{}} | {info, #'RequestInfo'{}} | {set_option, #'RequestSetOption'{}} | {init_chain, #'RequestInitChain'{}} | {query, #'RequestQuery'{}} | {begin_block, #'RequestBeginBlock'{}} | {check_tx, #'RequestCheckTx'{}} | {deliver_tx, #'RequestDeliverTx'{}} | {end_block, #'RequestEndBlock'{}} | {commit, #'RequestCommit'{}} | undefined % oneof
        }).
-endif.

-endif.
