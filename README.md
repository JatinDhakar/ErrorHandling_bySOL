# ErrorHandling_bySOL

The purpose of this solidity program is to implement error handling methods in solidity program which uses three functions namely require() , revert() and assert().

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has a multiple functions implementing a basic bank transaction mechanism using error handling methods.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Code_for_Error_handling.sol). Copy and paste the following code into the file:

    // SPDX-License-Identifier: UNLICENSED
    pragma solidity 0.8.18;

    contract errorFinding
    {
         uint  balance;
         uint  pin;

    function Set_your_pin(uint _pin) public  
    {
        pin = _pin;
    }

    function Deposit(uint _amount) public 
    {
        if(_amount <= 0)
        {
            revert("invalid amount is entered");
        }

        else
        {
            balance = balance + _amount;
        }
    }

    function Withdraw(uint _amount ) public returns(uint)
    {
        require(_amount < balance , "Your request amount is more than the balance in the wallet.");
        balance = balance - _amount;
        return balance;
    }

    function Get_Balance(uint _pin) public view returns(uint)
    {
        assert(_pin == pin);
        return balance;

    }
    }

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile Code_for_Error_handling.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "errorFinding" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling multiple functions like deposit , withdraw , etc. Click on the "errorFinding" contract in the left-hand sidebar, and then click on the Set_you_pin function and you will enter a pin in it(any of your choice) and then you can deposit and withdraw you amount by just calling the functions named by deposit and withdraw and finally you can check your balance by using Get_Balance function.

## Authors

Jatin dhakar


## License

This project is unlicensed 
