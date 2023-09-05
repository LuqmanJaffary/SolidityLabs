// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

//Task public visibility
// contract Public {
//     string public publicmsg = "Public Variable is Called";

//     function getpublic() public view returns (string memory) {
//         return publicmsg;
//     }
// }

// contract PublicB is Public {

// }

//Task
// contract PublicVisibility{
//     uint public publicData;
// }

// contract PublicChild is PublicVisibility {

//     function getPublicData() public view returns (uint){
//         return publicData;
//     }
// }

//Task Private Visibility
contract Private {
    string public  privatemsg = "Private Variable is Called";

    function getprivate() private view returns (string memory) {
        return privatemsg;
    }

    function getprivatevar() public view returns (string memory) {
        return privatemsg;
    }

    function getprivatefunc() public view returns (string memory) {
        // You are calling 'getprivate()' function here
        //It returns a string value which is then returned by the
        return getprivate();
    }
}

//its not possible to modify private variabl in child variable
contract Private2 is Private {

}

//Task

contract Bank {
    uint256 private balance;

    // function deposit(uint256 funds) public returns (uint256) {
    //     uint _funds = funds;
    //     return balance += _funds;
    // }
    function deposit(uint256 funds) public {
        uint256 _funds = funds;
        balance += _funds;
    }

    function getter()public view  returns (uint){
        return balance;
    }
}

contract BankUser is Bank {
    // deposit();
    // function getter()public view returns (uint){
    //     return  balance;
    // }

}
