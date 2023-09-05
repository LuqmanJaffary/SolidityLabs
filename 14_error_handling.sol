// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// 0x74E7BC39485f2a45c8eA64ba954C908ad0965089
// contract ErrorHandling {
//     mapping(address => uint256) Balances;

//     function Transfer(uint256 amount, address receipt) public {
//         require(amount > 0 && amount < 100, "invalid amount");
//         Balances[receipt] += amount;
//         Balances[msg.sender] -= amount;
//     }

//     function initialize() public {
//         Balances[msg.sender] = 1000;
//     }
// }

// contract OwnerShipTransfer {
//     mapping(uint256 => address) private owners;

//     function transferOwner2(uint256 ID, address newOwner) public {
//         if (owners[ID] != msg.sender) {
//             revert("Transfer Not Owner");
//         }
//         owners[ID] = newOwner;
//     }
// }

//     function calc(uint256 denominator, uint256 numerator)
//         public
//         pure
//         returns (uint256)
//     {
//         if (denominator != 0) {
//             revert("Negative Denominator");
//         }
//         return numerator / denominator;
//     }
// }

// contract Quotient{
//     function calc(uint denominator,uint numerator)public pure returns(uint){
//        require(denominator!=0,"Negative Denominator");
//        return numerator/denominator;
//     }
// }
