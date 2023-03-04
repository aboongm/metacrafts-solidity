// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract IntermediateCrafterToken is ERC20 {
    constructor(uint256 _supply) ERC20("CRAFTERTOKEN", "INTCRT") {
        _mint(msg.sender, _supply * (10 ** uint256(decimals())));
    }
}
