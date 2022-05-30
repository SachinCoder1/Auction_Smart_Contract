// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Auction {
    address payable public owner;
    uint public startTime; // Start time of auction;
    uint public endTime; // End time of auction;

    enum State {Started, Running, Ended, Cancelled}
    State public auctionState;

    uint public highestBid;
    uint public highestPayableBid;
    uint public bidInc;

    address payable public highestBidder;

    mapping(address => uint) public bidders;

    // modifier for not owner;
    modifier isOwner {
        require(msg.sender != owner, "Owner Can't bid");
        _;
    }



}