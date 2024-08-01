// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract memoryStorage{
    string[] public student=['Ravi','Sonu','Tapu','Gogi'];

    function mem() public view {
        string[] memory s1=student;
        s1[0]='Akash';
    }

    function sto() public{
        string[] storage s1=student;
        s1[0]='Akash';
    }
}