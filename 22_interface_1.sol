// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

interface ICar {
    function getType() external pure returns (string memory);

    function getMaxSpeed() external pure returns (uint256);

    function getName() external pure returns (string memory);

    function getColor() external pure returns (string memory);
}

contract Tesla is ICar {
    function getType() external pure override returns (string memory) {
        return "sedan";
    }

    function getMaxSpeed() external pure override returns (uint256) {
        return 300;
    }

    function getName() external pure override returns (string memory) {
        return "tesla";
    }

    function getColor() external pure override returns (string memory) {
        return "black";
    }
}

//Task
interface Token {
    function transfer(address to, uint256 amount) external returns(address, uint256);
}

contract TokenContract is Token {
    function transfer(address to,uint256 amount)external pure  returns(address _address ,uint256 Amount){
        address _to = to;
        uint256 _amount = amount;
        return ( _to,  _amount);
    }
}
