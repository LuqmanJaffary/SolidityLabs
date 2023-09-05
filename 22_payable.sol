// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

//program 1
// contract Payable {
//     address payable public owner;
//     // uint public  cont = address(this).balance;

//     constructor() payable {
//         owner = payable(msg.sender);
//     }

//     function deposite() public payable returns (uint256 account, uint256 cont) {
//         cont = address(this).balance; //contract paid
//         account = owner.balance;//contract balance
//     }

//     function notPayable() public view returns (uint256 account, uint256 cont) {
//         cont = address(this).balance;
//         account = owner.balance;
//     }
// }

// program 2
// contract PaymentContract {
//     address payable public owner;

//     constructor() payable {
//         owner = payable(msg.sender);
//     }

//     function receivePayable()
//         public
//         payable
//         returns (uint256 account, uint256 cont)
//     {
//         cont = address(this).balance;
//         account = owner.balance;
//     }
// }

//  address payable  public cont = address(this).balance;
//  address public owner = payable(msg.sender);

contract payEther {
    address payable user = payable(0x0A098Eda01Ce92ff4A4CCb7A4fFFb5A43EBC70DC);

    function sendEther() public payable {}

    function receiveEther() public view returns (uint256) {
        uint256 balance = address(this).balance;
        return balance;
    }

    function sendEtherAccount() public {
        user.transfer(1 ether);
    }
}
