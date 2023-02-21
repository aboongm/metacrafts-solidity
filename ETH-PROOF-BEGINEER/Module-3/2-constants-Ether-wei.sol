// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract EtherValue {
    uint256 public etherAmt;

    function sendEther() public payable {
        etherAmt += msg.value;
    }

    function getWeiAmount() public view returns (uint256) {
        return etherAmt;
    }

    function getEtherAmt() public view returns (uint256) {
        return etherAmt / 1 ether;
    }

    function getGweiAmount() public view returns (uint256) {
        return etherAmt / 1 gwei;
    }
}
