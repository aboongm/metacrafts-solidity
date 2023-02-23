// SPDX-License-Identiifer: MIT

pragma solidity ^0.8.13;

contract Event {
    // Event declaration
    // Up to 3 parameters can be indexed
    // Indexed parameters helps you filter the logs by the indexed parameters

    event messLog(address indexed sender, string message);
    event messLog();

    function test() public {
        emit messLog(msg.sender, "Hello World!");
        emit messLog(msg.sender, "Hello EVM!");
        emit messLog();
    }
}