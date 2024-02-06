# Create an address

## Create an Address

The first thing you’ll need to do anything on the KRYZA Diamond is an account. Each account has a public key and a private key. It is created by a user of the blockchain. It also includes account number and sequence number for replay protection.

Because the private key must be kept secret, you can generate the private key with the following command:

Examples:

``` javascript tab="JavaScript"
// generate key entropy
const privateKey = crypto.generatePrivateKey();
// get an address
const address = crypto.getAddressFromPrivateKey(privateKey);

const BnbApiClient = require("@shree-chain/javascript-sdk");
const axios = require("axios");
const bnbClient = new BnbApiClient(api);
const httpClient = axios.create({ baseURL: api });
bnbClient.chooseNetwork("mainnet"); // or this can be "testnet"
bnbClient.setPrivateKey(privKey);
bnbClient.initChain();

const address = bnbClient.getClientKeyAddress();

console.log("address: ", address);
```

```Go tab="GoLang"
//-----   Import packages  -------------
import (
	sdk "github.com/shree/go-sdk/client"
	"github.com/shree/go-sdk/keys"
)
//-----   Init KeyManager  -------------
km, _ := keys.NewKeyManager()
//-----   Init sdk  -------------
client, err := sdk.NewDexClient("dex.kryzascan.com", types.TestNetwork, km) // api string can be "https://testnet-dex.kryzascan.com" for testnet
accn, _ := client.GetAccount(client.GetKeyManager().GetAddr().String())
//-----   Print Address
fmt.Println(accn)
```

```python tab="Python"
from krd_chain.wallet import Wallet
from krd_chain.environment import KRYZA DiamondEnvironment

testnet_env = KRYZA DiamondEnvironment.get_testnet_env(, env=testnet_env)
wallet = Wallet.create_random_wallet(env=env)
print(wallet.address)
```

