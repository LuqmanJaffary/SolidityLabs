// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

//table of any number
// contract ForLoop {
//     uint256[] public numtable;

//     function table(uint256 num) public {
//         uint256 temp = num;
//         for (uint256 i = 1; i <= 10; i++) {
//             numtable.push(num);
//             num += temp;
//         }
//     }

//     function get() public view returns (uint256[] memory) {
//         return numtable;
//     }

//     function resetarr() public {
//         delete numtable;
//     }
// }

//positive number
// contract ForLoop {
//     int256[5] public arr = [-9, 8, 7, -2, 1];
//     int256[] public positarr;

//     function positivepart() public {
//         for (uint256 i = 0; i < arr.length; i++) {
//             if (arr[i] >= 0) {
//                 positarr.push(arr[i]);
//             }
//         }
//     }

//     function getposit() public view returns (int256[] memory) {
//         return positarr;
//     }
// }

//factorial of number
contract Factorial {
    function createFact(uint256 x) public pure returns (uint256) {
        uint256 n = x;
        uint256 factvalue = 1;
        if (n == 0) {
            factvalue = 1;
        }
        for (uint256 i = 1; i <= n; i++) {
            factvalue = factvalue * i;
        }
        return factvalue;
    }
}
