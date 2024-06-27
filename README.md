# SimpleBalance

This Solidity program is a simple "SimpleBalance" program that demonstrates the syntax and functionality of a few statements used in Solidity programming language. 

The purpose of this program is to serve as a starting point for those who are new to 'require, assert, and revert' statements in Solidity.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain.  

The program serves as a simple and straightforward introduction to 'require, assert, and revert' statements in Solidity programming.

#### The usage of the statements is as follows:

1. require : Used to validate inputs and conditions. If the condition is not met, it reverts the transaction and optionally provides an error message.
             For example: require(amount > 0, "Deposit amount must be greater than zero");

2. assert : Used to check for conditions that should never be false. If the condition is false, it indicates a bug in the code, and the transaction is reverted.
            For example: assert(balances[msg.sender] >= 0);

3. revert : Explicitly reverts the transaction with an error message. Useful for complex conditional checks where a single require might not suffice.
            For example: revert("This function always fails");

By studying and interacting with this contract, you will gain a better understanding of how to build and secure your own smart contracts on the Ethereum blockchain.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file and save it with a .sol extension (e.g., Meta_1.sol). 

Copy and paste the following code into the file:

```
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
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar and then click on the "Compile Meta_1.sol" button.

Once the code is compiled, deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. 

Select the "Meta_1" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, interact with it by calling the functions. 

To call the functions, first give input to the 'balances' by copying the address, and then call it.

Now, give the inputs to the 'deposit' and 'withdraw' functions, and call them. These functions show the usage of the 'require' and 'assert' statements.

Finally, call the 'alwaysFail' function to show the usage of the 'revert' statement.


## Authors


Kanishka Malik  
feelingwoenotho@gmail.com


                                                 
