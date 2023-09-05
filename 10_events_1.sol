// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Events {
    address owner;

    constructor() {
        owner = msg.sender;
    }

    function NewOwner(address _val) public {
        owner = _val;
    }

    event NewEvent(address prevowner, address newowner);

    function newOwnerModify() public {
        emit NewEvent(
            0x74E7BC39485f2a45c8eA64ba954C908ad0965089,
            0x74E7BC39485f2a45c8eA64ba954C908ad0965089
        );
    }

    // 1
    struct PersonInfo {
        string name;
        uint256 age;
        string gender;
    }
    PersonInfo public P1;

    // 2
    event Update(
        PersonInfo oldValue,
        PersonInfo newValue,
        uint256 timestamp,
        uint256 blockNumber
    );

    //3
    function setPersonInfo( PersonInfo memory newValue) public {
        PersonInfo memory oldValue = P1;
        P1 = newValue;
        emit Update(oldValue, P1, block.timestamp, block.number);
    }
}


// Task
// contract Events {
//     event ZeroAddressInputted(string message);

//     constructor(address _initialOwner) {
//         address message;
//         if (message == _initialOwner) {
//             emit ZeroAddressInputted(
//                 "Zero Address inputted on deployment of contract"
//             );
//         }
//     }
// }
