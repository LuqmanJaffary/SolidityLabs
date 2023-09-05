// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// contract Loop {
//     uint256[] public arr;

//     function NaturalNum(uint256 max) public returns (uint256[] memory) {
//         uint256 i = 1;
//         while (i <= max) {
//             arr.push(i);
//             i++;
//         }
//         return arr;
//     }
// }

//Task

// contract Loop {
//     uint256[] public arr;

//     function NaturalNum(uint256 max) public returns (uint256[] memory) {
//         uint256 i = 4;
//         while (i <= max) {
//             arr.push(i);
//             i+=4;
//         }
//         return arr;
//     }
// }

// contract NumberProcessor {
//     function calculateSumAndAverage(uint256[5] memory numbers)
//         public
//         pure
//         returns (uint256 sum, uint256 average)
//     {
//         uint256 totalSum = 0;
//         uint256 i = 0;
//         while (i < numbers.length) {
//             totalSum += numbers[i];
//             i++;
//         }
//         sum = totalSum;
//         average = totalSum / numbers.length;
//     }
// }

// contract FibonacciSeries {
//     function generateFibonacci(uint256 n)
//         public
//         pure
//         returns (uint256[] memory)
//     {
//         uint256[] memory fibonacciSeries = new uint256[](n);
//         if (n >= 1) {
//             fibonacciSeries[0] = 0;
//         }
//         if (n >= 2) {
//             fibonacciSeries[1] = 1;
//         }
//         uint256 i = 2;
//         while (i < n) {
//             fibonacciSeries[i] =
//                 fibonacciSeries[i - 1] +
//                 fibonacciSeries[i - 2];
//             i++;
//         }
//         return fibonacciSeries;
//     }
// }

