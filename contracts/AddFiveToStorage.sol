// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

import {SimpleStorage} from "./SimpleStorage.sol";


contract AddFiveToStorage is SimpleStorage {


    function store(uint _addFive) public override {
        myFavoriteNumber = _addFive + 5;
    }
}