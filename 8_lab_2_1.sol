// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

//Conditional
//while loop
// contract Loop {
//     function PrimeChecker(uint256 _num) public pure returns (bool is_prime) {
//         uint256 j = 2;
//         is_prime = true;
//         if (_num == 0 || _num == 1) {
//             is_prime = false;
//         }
//         while (j <= _num / 2) {
//             if (_num % j == 0) {
//                 is_prime = false;
//                 break;
//             }
//             j++;
//         }
//     }
// }

//do-while
// contract Loop {
//     function Palindrome(uint256 input) public pure returns (bool) {
//         uint256 temp = input;
//         uint256 digit;
//         uint256 rev;
//         do {
//             digit = temp % 10;
//             rev = (rev * 10) + digit;
//             temp = temp / 10;
//         } while (temp != 0);
//         if (input == rev) return true;
//         else return false;
//     }
// }

//for loop
// contract Loop {
// uint[]  data;
// function loop() public returns (uint[] memory) {

//  for (uint8 i = 0; i < 20; i=i+2) {
//  data.push(i);
//  }
//  return data;
// }
// }

//Task
// contract Loop {
// uint[]  data;
// function loop() public returns (uint[] memory) {

//  for (uint8 i = 1; i < 20; i=i+2) {
//  data.push(i);
//  }
//  return data;
// }

// function getter()public view  returns (uint[] memory){
//     return data;
// }
// }

// Task

contract ControlFlow {
// while
//using for loop
 function whileTest() public pure returns(uint256){
     uint sum = 0;
     for(uint i =0; i<15; i++){
     sum += i;
     } 
 return(sum);
 }
}