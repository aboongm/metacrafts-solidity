// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract VariableExample {
    // State variables
    bool public boolVariable;
    uint256 public uintVariable;
    address public addressVariable;
    string public stringVariable;

    // Set functions
    function setBoolVariable(bool _boolVariable) public {
        boolVariable = _boolVariable;
        getBoolVariable();
    }

    function setUintVariable(uint256 _uintVariable) public {
        uintVariable = _uintVariable;
        getUintVariable();
    }

    function setAddressVariable(address _addressVariable) public {
        addressVariable = _addressVariable;
        getAddressVariable();
    }

    function setStringVariable(string memory _stringVariable) public {
        stringVariable = _stringVariable;
        getStringVariable();
    }

    // Get functions
    function getBoolVariable() public view returns(bool) {
        return boolVariable;
    }

    function getUintVariable() public view returns(uint256) {
        return uintVariable;
    }

    function getAddressVariable() public view returns(address) {
        return addressVariable;
    }

    function getStringVariable() public view returns(string memory) {
        return stringVariable;
    }
}
