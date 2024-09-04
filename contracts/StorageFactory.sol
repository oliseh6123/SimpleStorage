// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0; 

// import "./SimpleStorage.sol";

// Name Import
import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage public simpleStorage;

    function createSimpleStorageContract() public{
        simpleStorage = new SimpleStorage();

    }

}