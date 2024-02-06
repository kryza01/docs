# Get Started with KRYZA Diamond

## Wallet

The easiest way to use KRYZA Diamond is through a wallet with support for KRYZA Diamond accounts and transfers.

For example, KRD provides a Web Wallet at [https://www.kryzascan.com](https://www.kryzascan.com)<br/>
KRD also provides Web Wallet for testnet at [https://testnet-explorer.kryzascan.com](https://testnet-explorer.kryzascan.com)<br/>
Both provide the functions below:

- Generating crypto keys and addresses, which serves as the base of a wallet
- Showing the balances of assets on the addresses
- Sending and receiving assets

KRYZA Diamond Web Wallet also presents a trading UI similar to kryzascan.com, where you can examine market data and manage your orders to trade among the listed assets.<br/>
Learn about the list of wallet available [here](wallets.md).

## Chain Explorer
Chain Explorer provides a portal to explore blocks and transaction details.<br/>
On KRYZA Diamond Explorer, you can also check different asset types, the distribution of their ownerships, and owners' transactions.

## REST API
There are [Accelerated Nodes](faq/faq.md#what-is-the-accelerated-node) which provide advanced API services for the public.<br/>

### Node RPC
There are data seed nodes in the network which allow users to perform low-level operations like executing ABCI queries, viewing network/consensus state or broadcasting a transaction.

## Advanced Ways To Use Blockchain
### Run your own full node

Please refer to this guide about [how to run your own node](fullnode.md).

### Run your own light client

Please refer to this guide about [how to run your own light client](light-client.md).

### Access via Node Command Line Interface (CLI)

A Command Line Interface is available for Linux and Mac platforms.<br/>


### Use SDKs

SDKs are also provided as a starting point for your apps.<br/>
There are two advanced SDK solutions for KRYZA Diamond: [Java](<https://github.com/githubusername/githubrepo/java-sdk>) and [Golang](<https://github.com/githubusername/githubrepo/go-sdk>).<br/>
Both solutions provide functions for:<br/>

* Create wallets and manage keys
* Encode/sign transactions and submit to KRYZA Diamond/DEX, including Transfer, New Order, Cancel Order, etc.
* Communicate with KRYZA Diamond/DEX Node RPC calls through public node RPC services or your own private full nodes

Please refer to specific SDK documentation for more information:

- [Go](https://github.com/githubusername/githubrepo/go-sdk)([Documentation](https://github.com/githubusername/githubrepo/go-sdk/wiki))
- [Java](https://github.com/githubusername/githubrepo/java-sdk)([Documentation](https://github.com/githubusername/githubrepo/java-sdk/wiki))
- [Javascript](https://github.com/githubusername/githubrepo/javascript-sdk) ([Documentation](https://github.com/githubusername/githubrepo/javascript-sdk/wiki))
- [C++](https://github.com/githubusername/githubrepo/cplusplus-sdk)([Documentation](https://github.com/githubusername/githubrepo/cplusplus-sdk/wiki))
- [C#](https://github.com/githubusername/githubrepo/csharp-sdk)([Documentation](https://github.com/githubusername/githubrepo/csharp-sdk))
- [Python](https://github.com/githubusername/githubrepo/python-sdk)([Documentation](https://python-shree-chain.readthedocs.io/en/latest/shree-chain.html#module-krd_chain))
- [Swift](https://github.com/githubusername/githubrepo/swift-sdk)([Documentation](https://github.com/githubusername/githubrepo/swift-sdk/blob/master/README.md))


## Blockchain Details
Please check the [technical details](index.md#technology-details) for more technical information.
