// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// contract Supplier {
//     string public order;

//     function placeOrder(string memory _order) public {
//         order = _order;
//     }
// }

// contract Manufacturer {
//     string public make;

//     function manufactureProduct(string memory _make) public {
//         make = _make;
//     }
// }

// contract Product is Supplier, Manufacturer {
//     function trackProduct() public view returns (string memory, string memory) {
//         return (order, make);
//     }
// }

/* Inheritance tree：
 Car
 / \
TOYOTA BMW
 \ /
 Supra
*/
contract Car {
    event Log(string message);

    function demo() public virtual {
        emit Log("Base Car demo Called");
    }

    function temp() public virtual {
        emit Log("Base Car temp Called");
    }
}

contract TOYOTA is Car {
    function demo() public virtual override {
        emit Log("TOYOTA demo called");
    }

    function temp() public virtual override {
        emit Log("TOYOTA temp called");
        super.temp();
    }
}

contract BMW is Car {
    function demo() public virtual override {
        emit Log("BMW demo called");
    }

    function temp() public virtual override {
        emit Log("BMW temp called");
        super.temp();
    }
}

contract Supra is BMW,TOYOTA {
    function demo() public override(BMW,TOYOTA) {
        super.demo();
    }
    function temp() public override(TOYOTA,BMW) {
        super.temp();
    }
}
