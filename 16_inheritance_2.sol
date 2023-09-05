// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

//Hierarchical Inheritance:
// contract Base {
//     uint256 public x;

//     function setX(uint256 _x) public {
//         x = _x;
//     }
// }

// contract DerivedA is Base {
//     function getX() public view returns (uint256) {
//         return x;
//     }
// }

// contract DerivedB is Base {
//     function getXTimesTwo() public view returns (uint256) {
//         return x * 2;
//     }
// }

// contract DerivedC is Base {
//     function getXTimesThree() public view returns (uint256) {
//         return (x * x * x);
//     }
// }

//Task

contract Car {
    string public model;
    uint256 public make;
    uint256 public batterCappacity;

    function setX(
        string memory _model,
        uint256 _make,
        uint256 _batteryCappacity
    ) public {
        model = _model;
        make = _make;
        batterCappacity = _batteryCappacity;
    }
}

contract ElectricCar is Car {
    function getX()
        public
        view
        returns (
            string memory,
            uint256,
            uint256
        )
    {
        return (model, make, batterCappacity);
    }
}

contract HybridCar is Car {
    uint256 public  gastankcapacity;

    function getX(uint256 _gastankcapacity)
        public
        returns (
            string memory,
            uint256,
            uint256,
            uint256
        )
    {
        gastankcapacity = _gastankcapacity;

        return (model, make, batterCappacity, gastankcapacity);
    }
}
