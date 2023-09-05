// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Marketplace {
    mapping(address => uint256) Balances;
    event Purchase(
        address buyerAddress,
        address senderAddress,
        uint256 purchase
    );

    function Register(address _addr, uint256 initialAmount) public virtual {
        require(initialAmount != 0, "Balances Can't Be Zero");
        Balances[_addr] = initialAmount;
    }

    function get(address adr) public view returns (uint256) {
        return Balances[adr];
    }

    event EmitInfo(address, address, uint256);

    function buy(
        address buyer,
        address seller,
        uint256 cash
    ) public virtual {
        require(
            Balances[buyer] != 0 && Balances[seller] != 0,
            "Either Seller Or Buyer Is not registered"
        );
        require(cash != 0, "invalid Amount");
        require(Balances[buyer] >=cash, "Buyer has Insuffiecient Amount");
        Balances[buyer] -= cash;
        Balances[seller] += cash;
        emit EmitInfo(buyer, seller, cash);
    }

    function sell(
        address buyer,
        address seller,
        uint256 cash
    ) public virtual {
        require(
            Balances[buyer] != 0 && Balances[seller] != 0,
            "Either Seller Or Buyer Is not registered"
        );
        require(Balances[buyer] > cash, "your have insufficient Amount");
        require(buyer != seller, "Buyer and sender are not been same");
    }
}

contract PremiumSeller is Marketplace {
    uint256 public fee;

    constructor(uint256 _setfee) {
        fee = _setfee;
    }

    function sell(
        address buyer,
        address seller,
        uint256 cash
    ) public override {
        uint256 feeAmount = (cash * fee) / 100;
        Balances[seller] -= feeAmount;
        Balances[address(this)] += feeAmount;
        super.sell(buyer, seller, cash);
    }
}

contract RegularBuyer is Marketplace {}

contract VIPBuyer is Marketplace {
    uint256 public discount;

    constructor(uint256 setDiscount) {
        discount = setDiscount;
    }

    function buy(
        address buyer,
        address seller,
        uint256 cash
    ) public virtual override {
        uint256 discountAmount = (cash * discount) / 100;
        uint256 finalamount = cash - discountAmount;
        Balances[buyer] += finalamount;
        Balances[seller] -= finalamount;
        super.buy(buyer, seller, cash);
    }
}
