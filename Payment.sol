// SPDX-License-Identifier: GPL-3.0

// 2AI IPCA - Summer School 2023
// Blockchain and Traceability
// lufer
// lufer@ipca.pt
// 14-07-2023
pragma solidity ^0.8.18;

/**
 * @dev Contract for Payment
 * @dev version 1.0 
*/
contract Payment {
    address private owner;
    uint balance;

    /**
     * @dev Set contract deployer as owner
     * @dev Set initial balance
     */
    constructor() {
        owner = msg.sender;
        balance = 100;
    }

   /**
     * @dev deposit()
     * @dev Add an amount to balance 
     * @return true or false
     */
    function deposit(uint amount) isOwner public returns (bool){
        require(amount>0, "Invalid amount");
        balance +=amount;
        return true;
    }

   /**
     * @dev withdraw()
     * @dev Widthraw a particular amount
     * @return true or false
     */
    function withdraw(uint val) public returns (bool) {
        require(owner == msg.sender, "Not allowed");
        require(balance > val, "Not enough money!");
        balance -= val;
        return true;
    }
       /**
     * @dev getBalance()
     * @dev Return owner balance 
     * @return address of owner
     */
    function getBalance() isOwner public view returns (uint256) {
        //require(owner == msg.sender, "Not allowed");
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

    /**
     * @dev Modifyer isOwner()
     * @dev Check id the sender is the owner 
     */

     modifier isOwner() {
        require(msg.sender == owner, "You don't have access...you are not the owner!");
        _;
    }

    /**
     * @dev withdrawII()
     * @dev Widthraw a particular amount 
     * @param val: amount to withdraw
     * @return true or false
     */
    function withdrawII(uint val) isOwner public returns (bool) {
        require(balance > val, "Not enough money!");
        balance -= val;
        return true;
    }

 
}