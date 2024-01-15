//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;
import "./SimpleStorage.sol";
contract StorageFactory {
    SimpleStorage[] public simpStorageArray;

    function createSimpleStorageContract() public {
       SimpleStorage newStorage = new SimpleStorage();
       simpStorageArray.push(newStorage);
    }

    //Store a value at a particular Simple Storage Contract
    function sfStore(uint256 _index, uint256 _number) public {
        SimpleStorage objectAtIndex = simpStorageArray[_index];
        objectAtIndex.store(_number);
    }

    //Retrieving the data using retrieve
    function sfGet(uint256 _index) public view returns(uint256) {
        SimpleStorage objectAtIndex = simpStorageArray[_index];
        return objectAtIndex.retrieve();
    }
}
