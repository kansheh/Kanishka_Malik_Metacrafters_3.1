// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleBalance {
    // This keeps a track of the balances
    mapping(address => uint256) public balances;

    // Function used to add tokens to your account
    function deposit(uint256 amount) public {
        // Makes sure the amount is more than 0
        require(amount > 0, "Amount must be greater than zero");

        // Adds the tokens to the sender's balance
        balances[msg.sender] += amount;

        // Checks that the balance is correctly updated
        assert(balances[msg.sender] >= amount);
    }

    // Function used to take tokens out of your account
    function withdraw(uint256 amount) public {
        // Makes sure the amount is more than 0
        require(amount > 0, "Amount must be greater than zero");

        // Makes sure the sender has enough tokens to withdraw
        require(balances[msg.sender] >= amount, "Insufficient balance");

        // Subtracts the tokens from the sender's balance
        balances[msg.sender] -= amount;

        // Checks that the balance is not negative
        assert(balances[msg.sender] >= 0);
    }

    // Function that always fails to show the usage of the 'revert' statement
    function alwaysFail() public {
        // Stop the transaction with an error message
        revert("This function always fails");
    }
}
