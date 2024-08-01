// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

struct Student {
    uint256 roll;
    string name;
}

contract Demo {
    Student public s1;

    constructor(uint256 _roll, string memory _name) {
        s1 = Student(_roll, _name);
        // s1.roll=_roll;
        // s1.name = _name;
    }

    function change(uint256 rollno, string memory Studentname) public {
        s1 = Student(rollno, Studentname);
        // s1.roll=rollno;
        // s1.name = Studentname;
    }
 
}
