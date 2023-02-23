pragma solidity ^0.8.13;

contract Error {
    function testRequire(uint _i) public pure {
        // Require should be used to validate conditions such as
        // - inputs
        // - conditions before execution
        // - return values from calls to other functions
        require(_i > 10, "Input must be greater than 10");
    }

    function testRevert(uint _i) public pure {
        // Rever is useful when the condition to check is complex
        // This code does the exact same things as the example above
        if (_i <= 10) {
            revert("Input must be greater than 10");
        }
    }

    uint public num;

    function testAssert() public {
        // Assert should only be used to test for internal errors
        // and to check invariants

        // Here we assert that num is always equal to 0
        // since we never change it
        assert(num == 0);
    }
}