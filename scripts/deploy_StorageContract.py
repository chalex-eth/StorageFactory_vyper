from brownie import SimpleStorage
from scripts.helpful_scripts import get_account, LOCAL_BLOCKCHAIN_ENVIRONMENTS


def deploy_SimpleStorage():
    account = get_account()
    simple_storage = SimpleStorage.deploy({"from": account})
    print(f"Contract deployed to {simple_storage.address}")
    return simple_storage


def main():
    simple_storage = deploy_SimpleStorage()
