// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract if_else {
    function check(uint256 a) public pure returns (uint256) {
        // if (a < 10) {
        //     return 0;
        // } else if (a > 20 && a < 30) {
        //     return 1;
        // } else return 2;

        return a < 10 ? 0 : a > 20 && a < 30 ? 1 : 2;
    }
}
