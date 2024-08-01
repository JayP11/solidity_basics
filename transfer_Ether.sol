// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract pay{
    // address payable user=payable()
    function payEther() public payable {}
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
    function sendEther() public {
        // user.transfer(1 ether);
    }
}