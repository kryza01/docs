# List Transaction


Only [BEP2](https://github.com/githubusername/githubrepo/BEPs/blob/master/BEP2.md) tokens issued on KRYZA Diamond can be listed. Learn how to issue BEP2 tokens [here](tokens.md). If a token's listing proposal has been passed by valdiators, then a `list` transaction must be sent before `expire-time`.

## List Fee
Fees will be charge when issuing a token, creating a proposal, depositing and listing. You can refer to [fee table in trading spec](./trading-spec.md).

## List Transaction

### Proposal Parameters
* `quote-asset-symbol`: For now, only support KRD as quote asset.
* `init-price`: the initial price for your asset, it is boosted by **1e8**
* `proposal-id`: this corresponds to the listing proposal that is passed
* `from`: this address should be the issuer of base asset


Example on **mainnet**:
```bash

$  ./eth-cli dex list -s AAA-254 --quote-asset-symbol KRD --from test \
--init-price 100000000 --proposal-id 15 --chain-id KRD-Chain-Tigris   --node  https://dataseed5.defibit.io:443  --json
{
   "Height":"282409",
   "TxHash":"77AE3D190F430FE6E4B1A9659BEBB3F022CF7631",
   "Response":{
      "log":"Msg 0: ",
      "tags":[
         {
            "key":"YWN0aW9u",
            "value":"ZGV4TGlzdA=="
         }
      ]
   }
}
```

Example on **testnet**:

```bash
$  ./eth-cli dex list -s AAA-254 --quote-asset-symbol KRD --from test \
--init-price 100000000 --proposal-id 15 --chain-id=KRD-Chain-Ganges --node=data-seed-pre-2-s1.kryzascan.com:80 --json
{
   "Height":"282409",
   "TxHash":"77AE3D190F430FE6E4B1A9659BEBB3F022CF7631",
   "Response":{
      "log":"Msg 0: ",
      "tags":[
         {
            "key":"YWN0aW9u",
            "value":"ZGV4TGlzdA=="
         }
      ]
   }
}
```

After the transaction is executed, you could see the newly added trading pair from Explorer and maket API.


