🗳️ VoteKing – A Simple Solidity Voting Smart Contract
VoteKing is a beginner-friendly Solidity smart contract that lets anyone vote between two fixed candidates — Alice and Bob — on the Ethereum blockchain.
It’s designed to be minimal, easy to understand, and fully deployable without any constructor inputs.

⚡ Features
<img width="1920" height="1080" alt="Screenshot (1)" src="https://github.com/user-attachments/assets/6eca4622-5657-44b6-bd45-464d9a48075e" />

🧩 No Inputs Required: Works right out of the box — no setup needed.
🗳️ Simple Voting: Vote for Alice or Bob using two easy functions.
🔒 One Vote per Wallet: Each address can only vote once.
🏆 Live Winner Check: Instantly see who’s winning using getWinner().

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

🧠 How It Works
Deploy the contract – no inputs required.
Vote for a candidate by calling either:
voteAlice()
voteBob()
Once you vote, your wallet address is recorded to prevent multiple votes.
Check who’s winning anytime by calling getWinner().

🚀 Deploy on Remix
Open Remix IDE
Create a new file: VoteKing.sol.
Paste the contract code above.
Compile it using Solidity version 0.8.0 or higher.
Go to the Deploy & Run Transactions tab.
Select JavaScript VM or Injected Provider (MetaMask).
Click Deploy — you’re live!


🧩 Functions Overview
Function	Type	Description
voteAlice()	Public	Casts your vote for Alice.
voteBob()	Public	Casts your vote for Bob.
getWinner()	View	Returns the current leading candidate or "Tie".
💡 Example Use Case

This project is great for:
Learning how voting contracts work on Ethereum
Understanding basic Solidity syntax (variables, mapping, require)
Building your first DApp or smart contract project

🛠️ Tech Stack
Language: Solidity ^0.8.0
IDE: Remix Ethereum IDE
Network: Local VM / Ethereum Testnets (Sepolia, Goerli, etc.)

🏁 License
This project is licensed under the MIT License — free to use, modify, and share.

👑 Author
VoteKing — a simple blockchain voting demo for beginners learning Solidity.
Feel free to fork, star ⭐, and experiment with it!


Contract Adress--> 0xd9145CCE52D386f254917e481eB44e9943F39138
