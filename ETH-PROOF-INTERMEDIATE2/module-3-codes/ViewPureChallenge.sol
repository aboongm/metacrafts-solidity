// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract ViewPure {
    uint256 public number;

    function setNumber(uint256 _number) public {
        number = _number;
    }

    function getNumber() public view returns (uint256) {
        return number;
    }

    function addNumbers(
        uint256 _num1,
        uint256 _num2
    ) public pure returns (uint256) {
        return _num1 + _num2;
    }

    function multiplyNumbers(
        uint256 _num1,
        uint256 _num2
    ) public pure returns (uint256) {
        return _num1 * _num2;
    }
}
