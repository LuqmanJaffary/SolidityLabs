// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// contract Callee {
//  string public name = "I'm getting called";
// }

library Task {
    function sum(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    function difference(int256 a, int256 b) public pure returns (int256) {
        return a - b;
    }

    function power(uint256 a, uint256 b) public pure returns (uint256) {
        return a**b;
    }
}
