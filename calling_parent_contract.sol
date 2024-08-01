// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract A {
    event Log(string message);

    string public Logs;

    function foo() public virtual {
        emit Log("A.foo called");
    }

    function fool() public virtual {
         Logs = "A.foo called";
    }
}
