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
    uint public bidAmount;

    address payable public highestBidder;

    mapping(address => uint) public bidders;


    //  Constructor
    constructor(){
        owner = payable(msg.sender);

        auctionState = State.Running;

        startTime = block.number;
        endTime = startTime + 240;

        bidAmount = 1 ether;
    }


    // modifier for not owner;
    modifier onlyOwner {
        require(msg.sender == owner, "Sorry you are not permitted to use it.");
        _;
    }
    modifier notOwner {
        require(msg.sender != owner, "Owner Can't bid");
        _;
    }

    // modifier for the auction is started.
    modifier started {
        require(block.number > startTime);
        _;
    }

    // modifier for the auction is ended.
    modifier isEnded {
        require(block.number <= endTime);
        _;
    }


    // to cancel the auction
    function cancelAuction() public onlyOwner {
        auctionState = State.Cancelled;
    }






}