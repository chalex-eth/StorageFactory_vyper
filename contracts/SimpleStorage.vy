# @version >=0.2 <0.3.0

favoriteNumber: uint256

# This is a comment!
struct People:
    favoriteNumber: uint256
    name: String[100]
    
Count: uint256
people: public(HashMap[uint256,People])
nameToFavoriteNumber: public(HashMap[String[100],uint256])

@external
def store(_favoriteNumber: uint256):
    self.favoriteNumber = _favoriteNumber
    
@external
@view
def retrieve() -> uint256:
    return self.favoriteNumber
    

@external
def addPerson(_name: String[100], _favoriteNumber: uint256):
    tmpPeople: People = People({favoriteNumber: _favoriteNumber, name: _name})
    self.people[self.Count] = tmpPeople
    self.nameToFavoriteNumber[_name] = _favoriteNumber
    self.Count += 1