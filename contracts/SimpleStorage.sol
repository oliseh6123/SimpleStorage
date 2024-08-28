// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract SimpleStorage{
    uint256 public favoriteNumber;

    //uint256 [] listOfFavoriteNumber;
    
    //In solidity you can create a type keyword by using the word struct


    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }
}

