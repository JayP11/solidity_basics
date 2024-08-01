// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract Deposit {
    // receive() external payable {}

    // fallback() external payable {}

    // function getBalance() public view returns (uint256) {
    //     return address(this).balance;
    // }

    uint256 public num;

    function testAssert() public view {
        // Assert should only be used to test for internal errors,
        // and to check invariants.

        // Here we assert that num is always equal to 0
        // since it is impossible to update the value of num
        assert(num == 0);
    }
}
