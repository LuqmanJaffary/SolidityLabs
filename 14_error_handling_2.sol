// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// contract AdmissionSystem {
//     enum Department {
//         Civil,
//         Mechanic,
//         Electrical,
//         Software
//     }
//     mapping(uint256 => bool) admissionStatus;
//     mapping(uint256 => Department) chosenDepartment;

//     function setAdmissionStatus(uint256 student, bool hasPassed) public {
//         admissionStatus[student] = hasPassed;
//     }

//     function chooseDepartment(uint256 student, Department selectedDept) public {
//         assert(admissionStatus[student] == true);
//         chosenDepartment[student] = selectedDept;
//     }
// }

// contract CustomError {
//     uint256 public balance = 1000;
//     error Balance(uint256 balance, uint256 transferAmount);

//     function transfer(uint256 amount) public returns (uint256) {
//         if (amount >= balance) {
//             revert Balance(balance, amount);
//         }
//         balance -= amount;
//         return balance;
//     }
// }

// contract OwnerShipTransfer {
// error Invalid();
//     mapping(uint256 => address) private owners;

//     function transferOwner4(uint256 ID, address newOwner) public {
//         if (owners[ID] != msg.sender) {
//             revert Invalid();
//         }
//         owners[ID] = newOwner;
//     }
// }

// contract CustomError {
//     uint256[] public arr;
//     error customError(string message,uint num);
//     function upush(uint256 num) public {
//         if (IsPrime(num)) {
//             //Insert Revert Statement Here
//             revert customError("not a prime number",num);
//         }
//         arr.push(num);
//     }

//     function IsPrime(uint256 num) public pure returns (bool) {
//         if (num == 0 || num == 1) {
//             return false;
//         }
//         for (uint256 i = 2; i <= num / 2; i++) {
//             if (num % i == 0) {
//                 return true;
//             }
//         }
//         return false;
//     }
// }
