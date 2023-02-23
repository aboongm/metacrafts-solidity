// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract SmartContractProjectM1 {
    uint public x;
    address payable public owner;

    function setNumber(uint _x) public {
        require(_x > 0, "Number must be greater than 0");
        x = _x;        
    }

    function add(uint _y, uint _z) public view returns (uint) {
        uint result = _y + _z;
        assert(result >= _y && result >= _z);
        return result;
    }

    // function withraw() public {
    //     require(msg.sender == owner, "Only owner can withdraw");
    //     uint amt = address(this).balance;
    //     require(amt > 0, "Contract balance is 0");
    //     owner.transfer(amt);
    // }

    function revertWithMessage(uint _i) public pure {
        if (_i < 10) {
            revert("This is a revert message");
        }        
    }
}