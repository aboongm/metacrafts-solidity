// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract FunctionChallenge {
    uint a;
    uint b;

    constructor(uint _a, uint _b) {
        a = _a;
        b = _b;
    }

    function add() public view returns (uint) {
        return a + b;
    }

    function subtract() public view returns (uint) {
        return a - b;
    }

    function multiply() public view returns (uint) {
        return a * b;
    }

    function divide() public view returns (uint) {
        return a / b;
    }
}