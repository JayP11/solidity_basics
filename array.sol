// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract array {
    // uint256[] public arr;
    uint256[] public arr = [1, 2, 3];

    // function get(uint256 i) public view returns (uint256) {
    //     return arr[i];
    // }

    function push(uint256 i) public {
        arr.push(i);
    }

    function pop() public {
        arr.pop();
    }

    // function remove(uint index) public {
    //    delete arr[index];
    // }

    function remove(uint256 index) public {
        require(index < arr.length, "Index out of bounds");

        // Shift elements to the left
        for (uint256 i = index; i < arr.length - 1; i++) {
            arr[i] = arr[i + 1];
        }

        // Reduce the array length
        arr.pop();
    }

    function change(uint ind,uint val)public{
        arr[ind] = val ;
    } 

    function getLength() public view returns (uint256) {
        return arr.length;
    }

    function getArr() public view returns (uint256[] memory) {
        return arr;
    }
}


//Fixed Size Array
 
// pragma solidity >=0.5.0 <0.9.0;
 
// contract FixedSizeArrays{
// // declaring a fixed-size array of type uint with 3 elements
// uint[3] public numbers = [2, 3, 4];
 
// // declaring fixed-size arrays of type bytes
// bytes1 public b1;
// bytes2 public b2;
// bytes3 public b3;
// //.. up to bytes32
 
// // changing an element of the array at a specific index
// function setElement(uint index, uint value) public{
// numbers[index] = value;
// }
 
// // returning the number of elements in the array
// function getLength() public view returns(uint){
// return numbers.length;
// }
 
// // setting bytes arrays
// function setBytesArray() public{
// b1 = 'a'; // => 0x61 (ASCII code of `a` in hex)
// b2 = 'ab'; // => 0x6162
// b3 = 'z'; // => 0x7A
// // b3[0] = 'a'; // ERROR => can not change individual bytes
 
// // byte is an alias for bytes1 on older code
// }
// }
 



 //Dynamic Arrays
 
// pragma solidity >=0.5.0 <0.9.0;
 
// contract DynamicArrays{
// // dynamic array of type uint
// uint[] public numbers;
 
// // returning length
// function getLength() public view returns(uint){
// return numbers.length;
// }
 
// // appending a new element
// function addElement(uint item) public{
// numbers.push(item);
// }
 
// // returning an element at an index
// function getElement(uint i) public view returns(uint){
// if(i < numbers.length){
// return numbers[i];
// }
// return 0;
// }
 
 
// // removing the last element of the array
// function popElement() public{
// numbers.pop();
// }
 
// function f() public{
// // declaring a memory dynamic array
// // it's not possible to resize memory arrays (push() and pop() are not available).
// uint[] memory y = new uint[](3);
// y[0] = 10;
// y[1] = 20;
// y[2] = 30;
// numbers = y;
// }
 
// }