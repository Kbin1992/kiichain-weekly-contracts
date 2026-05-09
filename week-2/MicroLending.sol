// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract KiiMicroLending {

    mapping(address => uint256) public deposits;
    mapping(address => uint256) public loans;

    event Deposited(address indexed user, uint256 amount);
    event LoanRequested(address indexed user, uint256 amount);
    event LoanRepaid(address indexed user, uint256 amount);

    function deposit() public payable {
        require(msg.value > 0, "Deposit must be greater than 0");

        deposits[msg.sender] += msg.value;

        emit Deposited(msg.sender, msg.value);
    }

    function requestLoan(uint256 amount) public {
        require(amount > 0, "Invalid loan amount");
        require(deposits[msg.sender] >= amount / 2,
            "Need collateral");

        loans[msg.sender] += amount;

        emit LoanRequested(msg.sender, amount);
    }

    function repayLoan() public payable {
        require(loans[msg.sender] > 0, "No active loan");
        require(msg.value > 0, "Repayment required");

        loans[msg.sender] -= msg.value;

        emit LoanRepaid(msg.sender, msg.value);
    }

    function getDeposit(address user)
        public
        view
        returns(uint256)
    {
        return deposits[user];
    }

    function getLoan(address user)
        public
        view
        returns(uint256)
    {
        return loans[user];
    }
}
