pragma solidity ^0.8.0;

contract LoopingChallenge {
    function multiplyByTwo(uint256 x) public pure returns (uint256) {
        for (uint256 i = 0; i < 1000; i++) {
            x *= 2;
        }
        return x;
    }
}
