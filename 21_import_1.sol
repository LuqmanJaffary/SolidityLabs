// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
// import Foo.sol from current directory
import "./21_import.sol";
// import './library.sol';

// contract Import {
//     Callee public demo = new Callee();

//     // Test Callee.sol by getting it's name.
//     function getdemoName() public view returns (string memory) {
//         return demo.name();
//     }
// }

contract TaskClient{
    function getSum(uint256 x, uint256 y)public pure returns (uint256){
        return Task.sum(x , y);
    }
}
