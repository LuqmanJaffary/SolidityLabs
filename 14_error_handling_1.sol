// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// contract VotingSystem {
//task voting system
// function vote(uint256 _candidateId) public pure  {
//     uint temp = _candidateId;
//     if(_candidateId !=temp){
//         revert('Already Voted');
//     }
// }

// function sum1(uint8 _num1, uint8 _num2) public pure returns (uint256) {
//     uint256 sum;
//     sum = _num1 + _num2;
//     assert(sum < 256);
//     return sum;
// }
// }

// contract OwnerShipTransfer {
//     mapping(uint256 => address) private owners;

//     function transferOwner3(uint256 ID, address newOwner) public {
//         assert(owners[ID] == msg.sender);
//         owners[ID] = newOwner;
//     }
// }

// contract Assert {
//     function subtract(uint256 num1, uint256 num2)
//         public
//         pure
//         returns (uint256)
//     {
//         uint256 sub;
//         sub = num1 - num2;
//         assert(int256(num1) - int256(num2) >= 0);
//         return sub;
//     }
// }

contract ErrorH {
    uint256[] arr;

    function AddElement() public returns (uint256[] memory) {
        for (uint256 i = 0; i < 10; i++) {
            arr.push(i);
        }
        return arr;
    }

    function RemoveElem() public returns (uint256[] memory) {
        for (uint256 j = 0; j < arr.length; j++) {
            assert(arr.length != 0);
            arr.pop();
        }
        return arr;
    }
}
