// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.24;

// contract SimpleStorage {
//     // State variable to store a number
//     uint256 public  num=5;

//     // You need to send a transaction to write to a state variable.
//     function set(uint256 _num) public {
//         num = _num;
//     }
//     // You can read from a state variable without sending a transaction.
//     function get() public view returns (uint256) {
//         return num;
//     }
// }

 pragma solidity ^0.8.24;

contract Immutable {
    // coding convention to uppercase constant variables
    address public immutable MY_ADDRESS;
    uint256 public immutable MY_UINT;

    constructor(uint256 _myUint) {
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUint;
    }
}
