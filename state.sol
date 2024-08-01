// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract A{
    function f1() public pure returns (uint){
        return 1;
    }
     function f2() private  pure returns (uint){
        return 2;
    }
    function f3() internal pure returns(uint){
         return 3;
    }
    function f4() external pure returns (uint){
        return 4;
    }
}

contract B is A{
    uint public roll=f3();
}

  