// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract loop {
    uint256[3] public arr;
    uint256 public count;

    function loops() public {
        // for(uint i=count;i<arr.length;i++){
        //     arr[count] = count;
        //     count++;
        // }

        // do {
        //     arr[count] = count;
        //     count++;
        // } while (count < arr.length);

        while (count < arr.length) {
            arr[count] = count;
            count++;
        }
    }
}
