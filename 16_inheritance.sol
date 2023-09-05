// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

//1-Single level inheritance
// contract Base {
//     uint256 public x;

//     function setX(uint256 _x) private  {
//         x = _x;
//     }
// }

// contract Derived is Base {
//     function getX() public view returns (uint256) {
//         return x;
//     }
// }

//Task
// contract Parent{
//     uint public parentValue;
// }

// contract child is Parent{

// }

//2-Multi level inheritance
// contract Base {
//     string public base = "Base Contract";

//     function foo() public view virtual returns (string memory) {
//         return base;
//     }
// }

// contract Middle is Base {
//     string public middle = "Middle Contract";

//     function foo() public view virtual override returns (string memory) {
//         return middle;
//     }
// }

// contract Derived is Middle {
//     string public derived = "Derived Contract";

//     function foo() public view virtual override returns (string memory) {
//         return derived;
//     }
// }

//Task
contract BaseUser {
    address public _address = 0x74E7BC39485f2a45c8eA64ba954C908ad0965089;
    event name(address);

    function print() public virtual {
        emit name(_address);
    }
}

contract Moderator is BaseUser {
    string public name2 = "ali";
    event name1(string);

    function print() public virtual override {
        emit name1(name2);
    }
}

contract Admin is Moderator {
    uint256 public PIN = 12;
    event pin(uint256);

    function print() public virtual override {
        emit pin(PIN);
    }
}
