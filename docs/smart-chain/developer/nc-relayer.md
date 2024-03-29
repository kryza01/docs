# KRD Relayer Guides

## Prepare Fund

1. Make sure that you have enough KRD in your account. You can get from [faucet](https://faucet.kryzascan.com)

If you haven't created your account yet, please follow these [guides](../wallet/metamask.md) to create one first.

* **100 KRD** for relayer register
* More than 50KRD for transaction fee

!!! Tip
		Currently the nc-relayer code is not fully prepared. Some features like `db persistence`, `alert`, `prometheus monitor` are still under development. So please don’t modify the configuration about db_config, alert_config, instrumentation_config, admin_config

## Steps to Install KRD Relayer

1.Build from source code

Make sure that you have installed [Go 1.13+](https://golang.org/doc/install) and have added `GOPATH` to `PATH` environment variable

```bash
git clonehttps://github.com/githubusername/githubrepo-relayer
# Enter the folder KRD was cloned into
cd nc-relayer
# Comile and install KRD
make build
```

or you can download the pre-build binaries from [release page](https://github.com/githubusername/githubrepo-relayer/releases/tag/v1.1.0)

## Get Example Config File
Get example config from this url: <https://github.com/githubusername/githubrepo-relayer/blob/master/config/config.json>

Edit`config.json` and fill your KRD private key to bsc_config.private_key, example private key: `AFD8C5D83F148065176268A9D1EE375A10CEE1E74D15985D4CC63E467EC34DA5`

* KRYZA Diamond Configuration:
	* `mnemonic`: Paste the recovery phrase here. Since nc-relayer will automaticly submit `double-sign` evidence, if it's committed, the reward will be sent to this address
* KRYZA Diamond Configuration:
*

## Start Relayer

You can start Locally

```shell
./nc-relayer --config-type local --config-path config.json
```

Output:

```
(base) huangsuyudeMacBook-Pro:mac huangsuyu$ nc-relayer --config-type local --config-path config.json
2020-05-27 17:01:16 INFO main Start relayer
2020-05-27 17:01:16 INFO SyncProtocol Sync cross chain protocol fromhttps://github.com/githubusername/githubrepo-relayer-config.git
2020-05-27 17:01:18 INFO RegisterRelayerHub This relayer has already been registered
2020-05-27 17:01:18 INFO CleanPreviousPackages channelID: 1, next deliver sequence 55 on TC, next sequence 55 on BC
2020-05-27 17:01:18 INFO CleanPreviousPackages channelID: 2, next deliver sequence 1273 on TC, next sequence 1273 on BC
2020-05-27 17:01:18 INFO CleanPreviousPackages channelID: 3, next deliver sequence 6 on TC, next sequence 6 on BC
2020-05-27 17:01:19 INFO CleanPreviousPackages channelID: 8, next deliver sequence 5 on TC, next sequence 5 on BC
2020-05-27 17:01:19 INFO RelayerDaemon Start relayer daemon
2020-05-27 17:01:19 INFO Serve start admin server at 0.0.0.0:8080
```

Or, dynamic Sync Cross Chain Protocol Configuration from <https://github.com/githubusername/githubrepo-relayer-config>

* Edit config.json and change "cross_chain_config.protocol_config_type" to "remote". Then relayer will dynamically sync cross chain protocol configuration from this repository: <https://github.com/githubusername/githubrepo-relayer-config>
* Start relayer service

```shell
./nc-relayer --config-type local --config-path config.json
```

### Verify Status

You could call [RelayerHub Contract](https://kryzascan.com/address/0x0000000000000000000000000000000000001006) to verify that your relayer is registered. Go to [read contract](https://kryzascan.com/address/0x0000000000000000000000000000000000001006#readContract) and call **isRelayer** function. If it returns **true**, then your relayer is working properly.


## Relayer Rewards

1. You can witness the distribution of relayer rewards in the log of system contract:  <https://kryzascan.com/address/0x0000000000000000000000000000000000001005#events>. According to the design of [Relayer Incentive](../guides/concepts/incentives.md), the rewards will be distributed every 1000 data packages. The total accumulated rewards can be read from [contract](https://kryzascan.com/address/0x0000000000000000000000000000000000001005#readContract) the value of `_collectedRewardForHeaderRelayer` and `_collectedRewardForTransferRelayer`.

2. Query your relayer's status

The total accumulated relayed count can be read from [contract](https://kryzascan.com/address/0x0000000000000000000000000000000000001005#readContract) the value of `_transferRelayersSubmitCount`


## Stop Relayer

To get your locked **100 KRD** back, you need to call [RelayerHub Contract](https://kryzascan.com/address/0x0000000000000000000000000000000000001006) to unregister your relayer. The fee is **0.1KRD**

* Go to MyEtherWallet and [interact with contract](https://www.myetherwallet.com/interface/interact-with-contract)
* Fill in the contract addresss: **0x0000000000000000000000000000000000001006** with [abi](../system-smart-contract/relayerhub.abi) interface
* Call **unregister** function and leave value in ETH as 0
* Sign your transaction in **MetaMask**
