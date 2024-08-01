// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract fun_Modifier {
    // modifier isEven(uint a){
    //     require(a%2==0,"a is not even");
    //     _;
    // }

    // function f1(uint a) public pure isEven(a) returns (bool){
    //     return true;
    // }

    modifier isTrue() {
        require(true == true, "True is not True");
        _;
    }

    function f1() public pure isTrue returns (uint256) {
        return 1;
    }

    function f2() public pure isTrue returns (uint256) {
        return 2;
    }

    function f3() public pure isTrue returns (uint256) {
        return 3;
    }

    function f4() public pure isTrue returns (uint256) {
        return 4;
    }
}
