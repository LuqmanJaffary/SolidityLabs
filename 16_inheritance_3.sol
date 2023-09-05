// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

//Multiple Inheritanc
// contract BaseA {
//     uint256 public x;

//     function setX(uint256 _x) public {
//         x = _x;
//     }
// }

// contract BaseB {
//     string public name;

//     function setName(string memory _name) public {
//         name = _name;
//     }
// }

// contract Derived is BaseA, BaseB {
//     function getData() public view returns (uint256, string memory) {
//         return (x, name);
//     }
// }

//Task
// contract Engine {
//     uint256 public horsepower;

//     function setHorsePower(uint256 _horsepower) public {
//         horsepower = _horsepower;
//     }
// }

// contract Transmission {
//     uint256 public gearType;

//     function setGearType(uint256 _gearType) public {
//         gearType = _gearType;
//     }
// }

// contract Car is Engine, Transmission {
//     function getData() public view returns (uint256, uint256) {
//         return (horsepower, gearType);
//     }
// }

//Task
contract WorkerRole {
    string public submitWork;

    function setter(string memory _submitWork) public {
        submitWork = _submitWork;
    }
}

contract ClientRole {
    string public createProject;

    function setter1(string memory _createProject) public {
        createProject = _createProject;
    }
}

contract Freelancer is WorkerRole, ClientRole {
    function getData() public view returns (string memory, string memory) {
        return (submitWork, createProject);
    }
}
