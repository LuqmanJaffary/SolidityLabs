// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract SimpleDivision {
    function Divide2Nums(uint256 a, uint256 b) public pure returns (uint256) {
        return a / b;
    }
}

contract TryCatchExample {
    SimpleDivision num = new SimpleDivision();
    event user(string message);

    function value(uint256 num1, uint256 num2) public returns (bool _success) {
        try num.Divide2Nums(num1, num2) returns (uint256) {
            return true;
        } catch {
            emit user("their is an error");
        }
    }
}
