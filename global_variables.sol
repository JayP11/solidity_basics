// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract global_variables {
    address public Owner;
    uint256 sentValue;

    uint256 public timestamp = block.timestamp;
    uint public blockno=block.number;
    uint public difficulty =block.difficulty;
    uint public gaslimit=block.gaslimit;

    constructor() {
        Owner = msg.sender;
    }

    function chgOwner() public {
        Owner = msg.sender;
    }

    function sentEth() public payable {
        sentValue = msg.value;
    }

    function getBal() public view returns (uint256) {
        return address(this).balance;
    }

    function howmuchgas() public view returns (uint256) {
        uint256 start = gasleft();

        uint256 j = 1;
        for (uint256 i = 1; i < 20; i++) {
            j *= i;
        }

        uint256 end = gasleft();
        return start - end;
    }
}
