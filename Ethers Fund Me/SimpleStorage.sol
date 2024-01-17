// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage{
    //Store and retrieve a fav num

    uint256 favNum;

    function store(uint256 _favNum) public virtual {
        favNum = _favNum;
    }

    function retrieve() public view returns(uint256){
        return favNum;
    }


    //Create an array of people and their favorite number

    struct People{
        uint256 favNum;
        string name;
    }

    People[] public people;

    mapping(string => uint256) public nameToFavoriteNumber;

    function addPeople(uint256 _favNum, string memory _name) public {
        People memory newperson = People({favNum: _favNum, name: _name});
        people.push(newperson);
        nameToFavoriteNumber[_name] = _favNum;
    }
}