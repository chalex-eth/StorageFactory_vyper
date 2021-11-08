from brownie import StorageFactory
from scripts.helpful_scripts import get_account

# This is the address where the SimpleStorage have been deployed
SIMPLE_STORAGE_ADDRESS = "0x2A09FBD13E617a9E20C702464de2d0650396c40f"
NUMBER_TO_STORE = [10, 20, 33, 2, 10]


def deploy_StorageFactory(SIMPLE_STORAGE_ADDRESS):
    StorageFactory.deploy(SIMPLE_STORAGE_ADDRESS, {"from": get_account()})


def deployFactory():
    print("Deploying factory")
    storage_factory = StorageFactory[-1]
    storage_factory.deployStorage({"from": get_account()})


def store(idx, number):
    storage_factory = StorageFactory[-1]
    print(f"Storing{number}")
    storage_factory.sfStore(idx, number, {"from": get_account()})


def get(idx):
    storage_factory = StorageFactory[-1]
    print(f"Number to store to idx{idx} is {storage_factory.sfGet(idx)}")


def main():
    print("Deploying contract")
    deploy_StorageFactory(SIMPLE_STORAGE_ADDRESS)
    for idx, value in enumerate(NUMBER_TO_STORE):
        deployFactory()
        store(idx, value)
        get(idx)
