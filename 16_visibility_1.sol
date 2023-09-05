// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// contract Internal {
//     string public internalmsg = "Internal Variable is Called";

//     function getinternal() internal view returns (string memory) {
//         return internalmsg;
//     }

//     function getinternalvar() public view returns (string memory) {
//         return internalmsg;
//     }

//     function getinternalfunc() public view returns (string memory) {
//         return getinternal();
//     }
// }

// contract Internal2 is Internal {
//     function modify() public {
//         // string memory _internalmsg = internalmsg;
//         internalmsg = "Change in internal msg";
//     }

//     function getter() public view returns (string memory) {
//         return internalmsg;
//     }
// }

//Task

contract FamilyFortune {
    uint256 internal inheritance;

    function addInheritance(uint256 amount) internal {
        inheritance += amount;
    }

    function getter() public view returns (uint256) {
        return inheritance;
    }
}

contract Heir is FamilyFortune {
    function Modify(uint256 amount) public {
        addInheritance(amount);
    }
}
