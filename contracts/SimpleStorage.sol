// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract SimpleStorage{
    uint256 public myFavoriteNumber;

    //uint256 [] listOfFavoriteNumber;
    
    //In solidity you can create a type keyword by using the word struct
    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    // Person public pat = Person({favoriteNumber: 7, name: "Pat"});
    // Person public james = Person({favoriteNumber: 23, name: "James"});
    // Person public nkiru = Person({favoriteNumber: 37, name: "Nkiru"});
    
    Person [] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;


    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256){
        return myFavoriteNumber;
    }

    function addPerson (string memory _name, uint256 _favoriteNmuber) public {
        listOfPeople.push(Person(_favoriteNmuber, _name));
        nameToFavoriteNumber[_name] = _favoriteNmuber;
    }
}

