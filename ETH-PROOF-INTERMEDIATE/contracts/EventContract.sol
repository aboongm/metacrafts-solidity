// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract EventContract {
    // Define the events
    event EventOne(address indexed sender, uint256 indexed id, string data);
    event EventTwo(bytes32 indexed hash, uint256 timestamp);
    event EventThree(address indexed sender, uint256 amount);

    function triggerEvents() public {
        // Trigger the events
        emit EventOne(msg.sender, 1, "Event One Data");
        emit EventTwo(keccak256("Event Two Hash"), block.timestamp);
        emit EventThree(msg.sender, 100);
    }
}