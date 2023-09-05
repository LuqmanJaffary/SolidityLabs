// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// library Explibrary {
//     function exponential(uint256 a, uint256 b) public pure returns (uint256) {
//         return a**b;
//     }
// }

// contract SumContract {
//     function sum(uint256 a, uint256 b) public pure returns (uint256) {
//         return a + b;
//     }
// }

// contract LibraryClient {
//     SumContract public foo = new SumContract();

//     function GetExponential(uint256 firstVal, uint256 secondVal)
//         public
//         pure
//         returns (uint256)
//     {
//         return Explibrary.exponential(firstVal, secondVal);
//     }

//     function Sum(uint256 firstVal, uint256 secondVal)
//         public
//         view
//         returns (uint256)
//     {
//         return foo.sum(firstVal, secondVal);
//     }
// }


library Task{
     function sum(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
     function difference(int256 a, int256 b) public pure returns (int256) {
        return a - b;
    }

    function power(uint a, uint b )public pure returns (uint){
        return a**b;
    }


}

contract TaskClient{
    function getSum(uint256 x, uint256 y)public pure returns (uint256){
        return Task.sum(x , y);
    }
}
