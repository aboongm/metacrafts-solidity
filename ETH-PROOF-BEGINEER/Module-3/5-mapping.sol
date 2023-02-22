// SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;

// Mapping
// How to declare a mapping (simple and nested)
// Set, get, delete

// ["alice", "bob", "charlie"]
// { "alice": true, "bob": true, "charlie": true }

contract Mapping {
    mapping(address => uint) public balances;
    mapping(address => mapping(address => bool)) public isFriend;

    function examples() external {
        balances[msg.sender] = 123;
        uint bal = balances[msg.sender];
        uint bal2 = balances[address(1)]; // 0

        balances[msg.sender] += 456; // 123 + 456 = 579
        
        delete balances[msg.sender]; // 0

        isFriend[msg.sender][address(this)] = true;
    }
}