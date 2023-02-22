// SPDX-License-Identifier: GPL-3.0;

pragma solidity ^0.8.3;

// Array - dynamic or fixed size
// Initialization
// Insert (push), get, update, delete, pop, length
// Creating array in memory
// Returning array from function

contract Array {
    uint[] public nums = [1, 2, 3]; // dynamic array
    uint[3] public fixedNums = [4, 5, 6]; // fixed size array

    function example() external {
        nums.push(4); // add to the end of the array [1, 2, 3, 4]
        uint x = nums[0]; // get the first element of the array
        nums[2] = 10; // update the third element of the array [1, 2, 10, 4]
        delete nums[2]; // delete the third element of the array [1, 2, 0, 4]
        nums.pop(); // remove the last element of the array [1, 2, 0]

        // create array in memory
        uint[] memory arr = new uint[](3);
        arr[0] = 1;
    }

    function returnArray() external view returns (uint[] memory) {
        return nums;
    }
}