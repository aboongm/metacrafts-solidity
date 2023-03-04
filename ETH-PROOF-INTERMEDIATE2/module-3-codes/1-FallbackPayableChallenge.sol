// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SampleContract {
    uint256 public number;

    recieve() external payable {}

    fallback() external payable {
        number = 0;
    }
}