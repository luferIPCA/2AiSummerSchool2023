// SPDX-License-Identifier: GPL-3.0

// 2AI IPCA - Summer School 2023
// Blockchain and Traceability
// Name
// Email
// 13-07-2023
pragma solidity ^0.8.18;

contract Payment {
    address owner;
    uint balance;

    //create an instance of Payment
    constructor() {
	//...
    }

    function withdraw(uint val) public returns (bool) {
	//...
    }


    function getBalance() public view returns (uint256) {
        //...
        return balance;
    }

   /**
     * @dev getOwner()
     * @dev Return owner address 
     * @return address of owner
     */
    function getOwner() external view returns (address) {
        return owner;
    }	
}