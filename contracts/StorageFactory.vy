# @version >=0.2 <0.3.0

interface SimpleStorage:
  def store(_simpleStorageNumber: uint256): nonpayable
  def retrieve() -> uint256: view

SimpleStorageContract: public(address)
Count: uint256
SimpleStorageArray: public(HashMap[uint256,address])

@external
def __init__(_SimpleStorageContract: address):
    self.SimpleStorageContract = _SimpleStorageContract

@external
def deployStorage():
    storage: address = create_forwarder_to(self.SimpleStorageContract)
    self.SimpleStorageArray[self.Count] = storage
    self.Count += 1 

@external
def sfStore(_simpleStorageIndex: uint256, _simpleStorageNumber: uint256):
    storage: address = self.SimpleStorageArray[_simpleStorageIndex]
    SimpleStorage(storage).store(_simpleStorageNumber)

@external
@view
def sfGet(_simpleStorageIndex: uint256) -> uint256:
    storage: address = self.SimpleStorageArray[_simpleStorageIndex]
    return SimpleStorage(storage).retrieve()

