// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract A {
    function name() public pure virtual returns (string memory) {
        return "A";
    }
}

contract B is A {
    function name() public pure virtual override returns (string memory) {
        return "B";
    }
}

contract C is A {
    function name() public pure virtual override returns (string memory) {
        return "C";
    }
}

contract D is B, C {
    function name() public pure override(B, C) returns (string memory) {
        return super.name();
    }
}

contract F is A, B {
    function name() public pure override(A, B) returns (string memory) {
        return super.name();
    }
}
