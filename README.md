# ErrorHandling_bySOL

The purpose of this solidity program is to implement error handling methods in solidity program which uses three functions namely require() , revert() and assert().

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has a multiple functions implementing a basic bank transaction mechanism using error handling methods.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Code_for_Error_handling.sol). Copy and paste the following code into the file:
```
    // SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.26;

contract TokenSharing 
    {
    string public token;
    address public owner;
    uint public totalSupply;
    uint oneTimeUse = 0 ;
    mapping (address => uint) balance;

    function A_setTokenName (string memory tokenName) public returns (string memory )
    {
        token = tokenName;
        owner = msg.sender;
        return ("The account who have created the token name has became the owner of the contract");
    }

    function B_setTokenAmount(uint TokenNo) public 
    {

        if(oneTimeUse == 0)
        {
        assert(msg.sender == owner);
        balance[owner] = TokenNo;
        totalSupply = TokenNo;
        oneTimeUse = 1;
        }

        else {
            revert ("Token amount can not be set twice");
        }
    }

    function C_mintToken ( address reciever , uint amount) public 
    {
        require (msg.sender == owner , "Only owner can mint the tokens");
        require (amount > 0 , "Required amount can not be negative or zero");
        balance[owner] -= amount;
        balance[reciever] += amount;
    }

    function D_transferToken ( address reciever , uint amount) public 
    {
        assert(balance[msg.sender] >= amount);
        balance[msg.sender] -= amount;
        balance[reciever] += amount;
    }

    function E_burnToken(uint amount) public 
    {
        if(balance[msg.sender] < amount || amount == 0)
        {
            revert("invalid amount of token to be burnt");
        }

        else {
            balance[msg.sender] -= amount;
        }
    }

    function F_FindBalance (address account) public view returns (uint)
    {
        return balance[account];
    }
    }
```
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile Code_for_Error_handling.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "errorFinding" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling multiple functions like deposit , withdraw , etc. Click on the "errorFinding" contract in the left-hand sidebar, and then click on the Set_you_pin function and you will enter a pin in it(any of your choice) and then you can deposit and withdraw you amount by just calling the functions named by deposit and withdraw and finally you can check your balance by using Get_Balance function.

## Authors

Jatin dhakar


## License

This project is unlicensed 
