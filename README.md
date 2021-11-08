# StorageFactory_vyper
 
This repo is the Vyper version of the [StorageFactory](https://github.com/PatrickAlphaC/storage_factory) from [Patrick Collins](https://github.com/PatrickAlphaC).


Feel free to pull a request or an issue if you figure out how to improve the Vyper code.
Compared to the original repo, there is a python code for deploying the script.
Since there is big difference between solidity and vyper regarding the ```new``` solidity and ```create_forwarder_to``` vyper, I am not sure that the contract work extactly the same. After some testing it seems to work.


# Important note

You have to create your own .env file containing : 
```
export PRIVATE_KEY="YOUR_PRIVATE_KEY"
export WEB3_INFURA_PROJECT_ID="YOUR_INFURA_ID"
```

Only the contract have been changed, the python script for deploying and interacting with the contract are close to the original.

This code is mainly designed to be deployed on the Kovan testnet
