# ErrorHandling_bySOL

The purpose of this solidity program is to implement error handling methods in solidity program which uses three functions namely require() , revert() and assert().

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has a multiple functions implementing a basic bank transaction mechanism using error handling methods.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., BidingAuction.sol). Copy and paste the following code into the file:
```
   // SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Auction {
    address public owner;
    string public itemName;
    uint256 public highestBid;
    address public highestBidder;

    constructor(string memory _itemName) {
        owner = msg.sender;
        itemName = _itemName;
    }

    function placeBid() external payable {
        // Example usage of require()
        require(msg.value > highestBid, "Bid must be higher than the current highest bid");

        // Example usage of assert()
        assert(msg.sender != owner); // Bidders cannot be the owner

        // Update highest bid
        highestBid = msg.value;
        highestBidder = msg.sender;
    }

    function finalizeAuction() external {
        // Example usage of revert()
        if (msg.sender != owner) {
            revert("Only the owner can finalize the auction");
        }
        owner = highestBidder;
    }
}
```
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.26" (or another compatible version), and then click on the "Compile BidingAuction.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Auction" contract from the dropdown menu, and then click on the "Deploy" button.

Now you can test and run all the funtions of the smart contract. Provide a name for the item while deploying the contract and then pass the amount in the value section to bid the item.

## Authors

Jatin Dhakar


## License

This project is unlicensed 
