// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VoteKing {
    uint256 public votesAlice;
    uint256 public votesBob;
    mapping(address => bool) public hasVoted;

    function voteAlice() public {
        require(!hasVoted[msg.sender], "You already voted!");
        hasVoted[msg.sender] = true;
        votesAlice += 1;
    }

    function voteBob() public {
        require(!hasVoted[msg.sender], "You already voted!");
        hasVoted[msg.sender] = true;
        votesBob += 1;
    }

    function getWinner() public view returns (string memory winner) {
        if (votesAlice > votesBob) {
            return "Alice";
        } else if (votesBob > votesAlice) {
            return "Bob";
        } else {
            return "Tie";
        }
    }
}
