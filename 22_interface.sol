// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

//program 1
interface InterfaceExample {
    // Functions having only declaration not definition
    function getStr() external view returns (string memory);

    function setValue(uint256 _num1, uint256 _num2) external pure returns(uint256);

    function add() external view returns (uint256);
}

contract Ivalues is InterfaceExample {

    function getStr() external pure returns (string memory) {
        return "i am luqman";
    }

    function setValue(uint256 _num1, uint256 _num2) external pure override  returns(uint256 _sum) {
           uint256 num1 = _num1;
           uint256 num2 = _num2;
           uint256 sum = num1 +num2;
           return sum;
    }

    function add() external pure override returns (uint256) {
        return (3+1);
    }
}

// program 2
interface IERC20 {
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );

    function totalSupply() external view returns (uint256);

    function balanceOf(address account) external view returns (uint256);

    function transfer(address to, uint256 amount) external returns (bool);

    function allowance(address owner, address spender)
        external
        view
        returns (uint256);

    function approve(address spender, uint256 amount) external returns (bool);

    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool);
}

// //program 3
interface Calculator {
    function getResult() external view returns (uint256);
}

contract Temp is Calculator {
    constructor() {}

    function getResult() external pure returns (uint256 result) {
        uint256 a = 2;
        uint256 b = 5;
        result = b / a;
    }
}

// //program 4

contract Counter {
    uint256 public count = 2;

    function square() external {
        count = count**2;
    }
}

interface ICounter {
    function count() external view returns (uint256);

    function square() external;
}

contract MyContract {
    function squareCounter(address _counter) external {
        ICounter(_counter).square();
    }

    function getCount(address _counter) external view returns (uint256) {
        return ICounter(_counter).count();
    }
}
