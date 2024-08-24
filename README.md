## TanupriyaToken (TN) - ERC20 Token
This is a Solidity smart contract implementing an ERC20 token named Tanupriya with the symbol TN. The contract allows the owner to mint, burn, and transfer tokens, and also includes functionality for changing ownership.

Features
Token Name: Tanupriya
Token Symbol: TN
Initial Supply: 1 million TN (adjusted for decimals)
Minting and Burning: Tokens can be minted or burned by the owner.
Ownership Transfer: Ownership can be transferred to a new address by the current owner.
Contract Details
Constructor
solidity
Copy code
constructor() ERC20("Tanupriya", "TN") {
    owner = msg.sender;
    _mint(address(this), 100 * 100 ** decimals());
}
Sets the token name and symbol.
Assigns the deployer as the contract owner.
Mints the initial supply of 1 million tokens to the contract itself.
Functions
onlyOwner Modifier
solidity
Copy code
modifier onlyOwner() {
    require(msg.sender == owner, "You are not the owner");
    _;
}
Restricts access to certain functions, ensuring only the owner can call them.
transferOwnership
solidity
Copy code
function transferOwnership(address newOwner) public onlyOwner {
    require(newOwner != address(0), "New owner cannot be the zero address");
    owner = newOwner;
}
Allows the current owner to transfer ownership to a new address.
The new owner cannot be the zero address.
mintTokens
solidity
Copy code
function mintTokens(address recipient, uint256 amount) public onlyOwner {
    require(balanceOf(address(this)) >= amount, "Insufficient contract balance");
    _transfer(address(this), recipient, amount);
}
Mints tokens from the contract's balance to a specified recipient.
Ensures that the contract has enough tokens before transferring.
burnTokens
solidity
Copy code
function burnTokens(uint256 amount) public {
    _burn(msg.sender, amount);
}
Allows any token holder to burn a specified amount of their tokens, reducing the total supply.
transferTokens
solidity
Copy code
function transferTokens(address recipient, uint256 amount) public returns (bool) {
    _transfer(msg.sender, recipient, amount);
    return true;
}
Facilitates token transfers from one user to another.
Returns true if the transfer is successful.
Deployment
Clone the repository:

bash
Copy code
git clone https://github.com/your-repo/TanupriyaToken.git
cd TanupriyaToken
Install dependencies:

bash
Copy code
npm install
Compile the contract:

bash
Copy code
npx hardhat compile
Deploy the contract:

bash
Copy code
npx hardhat run scripts/deploy.js --network <network-name>
Usage
Interacting with the Smart Contract
Once deployed, you can interact with the contract using tools like Remix, Hardhat, or Ethers.js. Key interactions include:

Transfer Ownership: Change the contract owner to another address.
Mint Tokens: Mint tokens from the contract’s balance to a specified address.
Burn Tokens: Destroy tokens from the caller’s balance.
Transfer Tokens: Transfer tokens from one address to another.
License
This project is licensed under the MIT License - see the LICENSE file for details.
