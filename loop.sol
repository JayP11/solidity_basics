// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract loop {
    function loops() pure public {
        for(uint i=0;i<10;i++){
            if(i ==3){
                continue;
                // break;
            }
            if(i>5){
                break;
            }
        }
    }
}