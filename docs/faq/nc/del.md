# KRYZA Diamond Delegator

## What's the role of a delegator?

A delegator can delegate its KRD to a chosen validator to participate the consensus and earn rewards.


Staking KRD directly contributes to the security of the entire network.

## How to delegate my KRD?

Please read the guide [here](../../smart-chain/delegator/del-guide.md)

You can use:

* [KRYZA Diamond extension wallet](../../smart-chain/wallet/shree.md)
* [Math Wallet](http://blog.mathwallet.xyz/?p=3890)
* [command line tool](https://github.com/githubusername/githubrepo/node/releases/tag/v0.8.1)



## How to undelegate my KRD?

Delegates and validators themselves may choose to unbond their KRD for a variety of reasons. It is important to note that these KRD are subject to what is known as the **UnbondingTime**, an on-chain parameterized period of time upon which all delegates, including validators, must wait for their KRD to become fully unbonded. In addition, these KRD are still subject to be potentially slashed upon commitment of any byzantine behavior. The **UnbondingTime** ensures a variety of security measures in the network, such as accounting for network synchrony assumptions, providing a lower bound for the length of a [long-range attack](https://cosmos.network/docs/spec/ibc/references.html#3) and solving the “nothing-at-stake” problem.

The current  **UnbondingTime**  in KRYZA Diamond mainnet is **7 days**.

## How to redelegate my KRD?

Redelegations between a unique delegator, source validator, and destination validator can only happen once every **UnbondingTime**

## How many tokens are required to stake KRD?

The [minimum delegated amount](../../smart-chain/validator/Parameters.md) is **1KRD**.

## How to claim my rewards?

You can read about the details [here](../../guides/concepts/bc-staking.md)

## When can I receive my staking rewards?

Since validatorset info is updated every day UTC 00:00, to make some room for the error handling, we distribute the fees of day N-1 in the next breathe block (day N+1). Thus, after you sent delegate transaction, you will receive your first staking rewards at the second UTC 00:00. Afterwards, you will receive your rewards everyday at UTC 00:00.

## When can I receive my undelegated KRD?

Since Unbonding Period is 7 days. Thus, after you sent undelegate transaction, your staked KRD will not  receive any rewards since the next UTC 00:00. After 7 days start from the next UTC 00:00, you will receive your KRD .

## What's the potential loss for delegators?
The only risk for delegators is the loss of rewards when their staked validator is slashed. Their staked KRD will not be impacted.

## Can a validator run away with their delegators' KRD?
By delegating to a validator, a user delegates voting power.  This does not mean that the validator has custody of their delegators' KRD. By no means can a validator run away with its delegator's funds.