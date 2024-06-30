pragma solidity ^0.8.0;
// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract metacraftToken is ERC20 {
    address public Owner;

    constructor() ERC20("Metacraft", "MTC") {
        Owner = msg.sender;
        _mint(address(this), 10 * 10 ** decimals());
    }

    modifier onlyOwner() {
        require(msg.sender == Owner, "You are not the owner");
        _;
    }

    function mintTokens(address recipient, uint256 amount) public onlyOwner {
        uint256 contractBalance = balanceOf(address(this));
        require(contractBalance >= amount, "Insufficient balance");
        _transfer(address(this), recipient, amount);
    }

    function burnTokens(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function transferTokens(address recipient, uint256 amount) public returns (bool) {
        _transfer(msg.sender, recipient, amount);
        return true;
    }
}
