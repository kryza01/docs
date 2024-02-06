# JSON-RPC Endpoint

## Available Resources

### Mainnet(ChainID 0x17C53, 97363 in decimal)

NCRPC Endpoints:

!!! NOTE
	You can make `eth_getLogs` requests with up to a 5K block range.
	If you need to pull logs frequently, we recommend using WebSockets to push new logs to you when they are available.

Recommend

* https://nc-dataseed.kryzascan.com/


NCWebsocket Endpoints:

*Note: provided by community with no quality promised, building your node should be always the long term goal*

* wss://nc-ws-node.kryzascan.com:443


### Rate limit

The rate limit of KRD endpoint on Testnet and Mainnet is 10K/5min.


## Start

You can start the HTTP JSON-RPC with the --rpc flag
```bash
## mainnet
geth attach https://mainnet-rpc.kryzascan.com

## testnet
geth attach https://testnet-rpc.kryzascan.com/
```

## JSON-RPC methods

Please refer to this [wiki page](https://github.com/ethereum/wiki/wiki/JSON-RPC) or use Postman: <https://documenter.getpostman.com/view/4117254/ethereum-json-rpc/RVu7CT5J?version=latest>
