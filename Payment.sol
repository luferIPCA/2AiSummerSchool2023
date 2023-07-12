// SPDX-License-Identifier: GPL-3.0

// 2AI IPCA - Summer School 2023
// Blockchain and Traceability
// lufer
// lufer@ipca.pt
// 14-07-2023
pragma solidity ^0.8.18;

contract Payment {
    address public owner;
    uint balance;

    //create an instance of Payment
    constructor() {
        owner = msg.sender;
        balance = 100;
    }

    function withdraw(uint val) public returns (bool) {
        require(owner == msg.sender, "Not allowed");
        require(balance > val, "Not enough money!");
        balance -= val;
        return true;
    }

     modifier isAdmin() {
        require(msg.sender == owner, "you don't have admin access");
        _;
    }

    function withdrawII(uint val) public returns (bool) {
        require(balance > val, "Not enough money!");
        balance -= val;
        return true;
    }

    function GetBalance() isAdmin public view returns (uint256) {
        require(owner == msg.sender, "Not allowed");
        return balance;
    }
}