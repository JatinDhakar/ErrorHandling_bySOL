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
