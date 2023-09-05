// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

struct BankAccount {
    uint256 accountID;
    uint256 balance;
    address owner;
}

contract account {
    BankAccount Account;

    //Method 1
    function initAccount1() public {
        BankAccount storage _Account = Account;
        _Account.accountID = 11;
        _Account.balance = 34;
        _Account.owner = 0x74E7BC39485f2a45c8eA64ba954C908ad0965089;
    }

    //Method 2

    function initAccount2() public {
        Account.accountID = 11;
        Account.balance = 34;
        Account.owner = 0x74E7BC39485f2a45c8eA64ba954C908ad0965089;
    }

    //Method 3

    function initAccount3() public {
        Account = BankAccount(
            12,
            32,
            0x74E7BC39485f2a45c8eA64ba954C908ad0965089
        );
    }

    //Method 4

    function initAccount4() public {
        Account = BankAccount({
            accountID: 10,
            balance: 56,
            owner: 0x74E7BC39485f2a45c8eA64ba954C908ad0965089
        });
    }

function getter()public  view returns (BankAccount memory){
    return Account;
}
}
