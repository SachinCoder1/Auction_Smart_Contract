# Auction_Smart_Contract


# Things used in the project :-

1. Solidity programming language.
2. Ethereum.
3. Remix IDE.




# Architecture of the project :-

Global Variables :- 
1. Owner -> The real owner who deployed the contract.
2. Start Time -> The time when auction starts.
3. End Time -> The time when the auction ends.
4. Highest Payable Bid -> Highest person who is payable.
5. Highest Bidder -> The person who have bidded highest.
6. Bid Increment -> Increment bid by 1. 
7. Bidders -> key value pair to keep track of bidders.


Functions  :- 
1. Cancel Auction
2. placeBid
3. Finalize


# How It works :-

1. The auction has : An owner ( The person that sells a good or service), a start and end time;

2. The Owner can cancel the auction if there is emergency and can finalize auction after it's end time.

3. People are sending ether when they are calling a function named placeBid(). After that it will register in a mapping the sender address and the sent value. 

4. Bidders are incentivized to bid the maximum they're willing to pay, They are not bound of full amount, but rather to the previous highest bid plus the increment. The contract will automatically bid up the given amount.

5. The highest payable bid is the selling price and the highest bidder the person who won the auction.

6. After the auction ends the owner gets the highest binding amount and everybody else withdraws their own sent amount. 
