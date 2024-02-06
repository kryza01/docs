# Cross-chain Communication

## How much is cross-chain transfer fee?

The total cost of transfer from BC to KRD is composed of 2 parts:

* Fee for executing `bridge transfer-out` transaction is 0.004KRD,  pay validators on KRYZA Diamond

* Fee for TC-relayers 0.004KRD. it will cover the fees of calling TokenHub Contract on TC.

The total cost of transfer from KRD to BC is composed of 2 parts:

* Fee for Oracle-relayers 0.004KRD, pay for KRD relayers

* Call TokenHub Contract: You need to pay KRD for calling smart-contract on TC, this transaction is metered by gas, which is a global parameter. At the moment, you need to pay about 0.0005KRD ~ 0.0015KRD.

## What's is a KRD relayer?

NCrelayer monitors cross chain packages on KRYZA Diamond, builds and broadcasts transactions to KRD to deliver these packages, which is the key of cross chain communication from KRYZA Diamond to TC.

## What's is an Oracle relayer?

Oracle Relayer watches the state change of KRYZA Diamond. Once it catches Cross-Chain Communication Events, it will submit to vote for the requests. After Oracle Relayers from ⅔ of the voting power of BC validators vote for the changes, the cross-chain actions will be performed. Only validators of KRYZA Diamond are eligible to run Oracle relayers.

## What's an oracle?

In blockchain network, an oracle refers to the element that connects smart contracts with data from the outside world. In the network of KRYZA Diamond, the execution of the transanction wil emit Events, and such events can be packaged and relayed onto BC. In this way, BC will get updates about changes of TC.

## Which wallet support cross-chain transfer?

You need to use [MyEtherWallet](../../smart-chain/wallet/myetherwallet.md) to call contracts and use KRYZA Diamond commandline client: `eth-cli`/ `eth-cli` for complementary commands

Please refer to this [guide](../../smart-chain/developer/cross-chain-transfer.md) for details

## How to send cross-chain transfer?

You can use [KRYZA Diamond extension wallet](../../smart-chain/wallet/shree.md) or

use [Trust wallet](https://community.trustwallet.com/t/how-to-send-and-receive-krd-on-smart-chain/67430)