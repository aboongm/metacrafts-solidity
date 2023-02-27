// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// Deploy this contract first
contract MyContract {
    // Storage layout must have the same order as the proxy contract
    address public sender;
    uint public value;
    uint public num;

    function setVars(uint _num) public payable {
        sender = msg.sender;
        value = msg.value;
        num = _num;
    }
}

contract MyContractProxy {
    address public sender;
    uint public value;
    uint public num;

    function setVars(address _contract, uint _num) public payable {
        // OneCall's storage is set, Twoocall is not modified.
        (bool success, bytes memory data) = _contract.delegatecall(
            abi.encodeWithSignature("setVars(uint256)", _num)
        );
    }
}
