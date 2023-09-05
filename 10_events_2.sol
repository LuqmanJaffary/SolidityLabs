// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// contract numberCheck {
//     event localVar(string message);
//     function numgive(int256 _val) public returns (int256) {
//         if (_val < 0) {
//              emit localVar("negative local variable returned the value");
//         } else if (_val % 2 == 0) {
//              emit localVar("positiveEven local variable returned the value");
//         } else if (_val % 2 != 0) {
//             emit localVar("positiveOdd local variable returned the value");
//         }
//             return (_val);
//     }

// }

contract Event {
    event Log(address indexed sender, string msg);
    event AnotherLog();

    function test() public {
        emit Log(msg.sender, "Hello Web3.0");
        emit Log(msg.sender, "It's all about Decentralization");
        emit AnotherLog();
    }
}
