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
