// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// contract DriverLicense {
//     error customError(string message, uint256 num);

//     function upush(uint256 age, uint256 driverId)
//         public
//         pure
//         returns (uint256)
//     {
//         if (age <18) {
//             revert customError("Too young", age);
//         }
//         return driverId;
//     }
// }

contract ATM {
    uint256 availableCash = 10000;
    error InsufficientFunds(string message, uint256 funds);

    function withdraw(uint256 amount) public {
        if (amount > availableCash) {
            revert InsufficientFunds(
                "Amount is too greater than",
                availableCash
            );
        } else {
            availableCash -= amount;
        }
    }

    function refill(uint256 refillAmount) public {
        availableCash += refillAmount;
    }
}
