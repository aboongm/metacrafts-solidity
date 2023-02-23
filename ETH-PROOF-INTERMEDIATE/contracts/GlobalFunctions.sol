// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract ContractWithGlobalFunctions {
    address public owner;
    uint public contractCreationTimestamp;

    constructor() {
        // variable assign with global function in Message context
        owner = msg.sender;
        contractCreationTimestamp = block.timestamp;
    }
    
    function isOwner() public view returns (bool) {
        // global function in Message context
        return msg.sender == owner;
    }
    
    function sendEther(address payable recipient) public payable {
        require(msg.value > 0, "Value must be greater than zero.");
        recipient.transfer(msg.value);
    }
    
    function getCurrentBlockNumber() public view returns (uint) {
        // global function in Block context
        return block.number;
    }
    
    function getCurrentBlockTimestamp() public view returns (uint) {
        return block.timestamp;
    }
    
    function getTransactionHash() public view returns (bytes32) {
        return blockhash(block.number - 1);
    }
}