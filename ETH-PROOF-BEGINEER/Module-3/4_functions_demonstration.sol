// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract FunctionLab {
    uint a;
    uint b;

    constructor(uint _a, uint _b) {
        a = _a;
        b = _b;
    }

    function SumFunction() private view returns (uint c) {
        return a + b;
    }

    function AnotherFunction() external view returns (uint c) {
        return SumFunction();
    }
}