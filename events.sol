// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract events {
    event transfer(address _from, address _to, uint256 amount);

    function test(address to, uint256 amt) public {
        emit transfer(msg.sender, to, amt);
    }
}
