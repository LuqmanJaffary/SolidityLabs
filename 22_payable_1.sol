// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

//program 1
contract Payable {
    address payable public owner;

    constructor() payable {
        owner = payable(msg.sender);
    }

    function deposit() public payable {}

    function notPayable() public {}

    function withdraw() public {
        uint256 amount = address(this).balance;
        (bool success, ) = owner.call{value: amount}("");
        require(success, "Failed to send Ether");
    }

    function transfer(address payable _to, uint256 _amount) public {
        (bool success, ) = _to.call{value: _amount}("");
        require(success, "Failed to send Ether");
    }
}

//progam 2
// contract AnotherPayable {
//     address public owner;

//     constructor() {
//         owner = msg.sender;
//     }

//     function deposit() public payable {}

//     function notPayable() public {}

//     function withdraw() public {
//         require(msg.sender == owner, "Only owner can withdraw");
//         uint256 amount = address(this).balance;
//         payable(msg.sender).transfer(amount);
//     }

//     function transfer(address _to, uint256 _amount) public {
//         require(msg.sender == owner, "Only owner can transfer");
//         payable(_to).transfer(_amount);
//     }
// }
