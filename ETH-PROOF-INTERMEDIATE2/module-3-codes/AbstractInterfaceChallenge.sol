// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

abstract contract AbstractContract {
    function abstractFunction(
        uint256 number
    ) public virtual returns (string memory);
}

interface InterfaceContract {
    function interfaceFunction(
        string memory str
    ) external view returns (string memory);
}

contract SampleContract is AbstractContract, InterfaceContract {
    function abstractFunction(
        uint256 number
    ) public override returns (string memory) {
        return "Hello World";
    }

    function interfaceFunction(
        string memory str
    ) public view override returns (string memory) {
        return str;
    }
}
