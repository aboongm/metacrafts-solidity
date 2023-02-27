// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Storage Example
// In this example, the smart contract’s state struct variable
// LotteryNumber is kept in storage, and data will persist
// between function calls.
contract StorageC {
    struct LotteryNumber {
        uint256 Lnumber;
        string selection;
    }

    mapping(address => LotteryNumber) public lotteryNumbers;

    // Memory Example
    // In the above example, the num variable is stored
    // temporarily and locally in memory and it will be
    // released as soon as the function call is completed
    function multiply(uint256 num) external returns (uint256) {
        uint256 result = num * num;
        return result;
    }
}
