//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "./PriceConverter.sol";

contract FundMe {
    using PriceConverter for uint256;

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    uint256 public minUSD = 50 * 1e18; 

    address[] public funders;
    mapping(address => uint256) public addressToAmountFunded;

    function fund() public payable{
        require(msg.value.getConversionRate() >= minUSD, "Did not send enough!");
        //if less reverts
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] = msg.value;
    }

    function withdraw() public onlyOwner {
        for(uint256 idx=0; idx<funders.length; idx++){
            address funder = funders[idx];
            addressToAmountFunded[funder] = 0;  
        }

        //reset array
        funders = new address[](0);
        //actually withdraw the funds

        //transfer, bool and call -> call recommended
        //https://solidity-by-example.org/sending-ether/
        (bool callSuccess, ) = payable(msg.sender).call{value: address(this).balance}("");
        require(callSuccess, "Call failed");

    }

    modifier onlyOwner {
        require(owner == msg.sender, "Sender is not owner!");
        _;
    }

}
