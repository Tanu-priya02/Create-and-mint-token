// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.4.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.4.0/contracts/access/Ownable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.4.0/contracts/security/Pausable.sol";

contract TanuToken is ERC20("Tanu Token", "TP"), Ownable, Pausable {

    // event TokensPurchased(address indexed purchaser, uint256 amount);

    constructor() Ownable() Pausable() {}

    // Function to mint token
    function mintToken(address to, uint256 amount) public onlyOwner {
        require(amount > 0, "The amount of minting token must be greater than zero");
        _mint(to, amount);
    }

    // Function to burn token
    function burnToken(uint256 amount) public {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance to burn token");
        _burn(msg.sender, amount);
    }

    // Function to transfer token
    function transferToken(address to, uint256 amount) public whenNotPaused returns (bool) {
        require(amount > 0, "The amount to be transferred must be greater than zero");
        require(balanceOf(msg.sender) >= amount, "Insufficient balance to transfer");
        _transfer(_msgSender(), to, amount);
        return true;
    }

    // Function to buy token
    function buyTokens(uint256 amount) public payable whenNotPaused {
        require(amount > 0, "Amount must be greater than zero");
        _transfer(owner(), msg.sender, amount);
    }

    // Function to pause contract
    function pause() public onlyOwner {
        _pause();
    }

    // Function to unpause contract
    function unpause() public onlyOwner {
        _unpause();
    }
}
