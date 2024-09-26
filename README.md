# TanuToken (TP)

TanuToken is an ERC20 token implemented in Solidity. This smart contract demonstrates the basic functionality of ERC20 tokens, including minting, burning, transferring tokens, and purchasing tokens. It also supports contract pausing and unpausing functions, which provide flexibility in controlling token activities.

## Description

TanuToken is a smart contract built using the Solidity programming language. It leverages OpenZeppelin's standard contracts for ERC20, Ownable, and Pausable functionality. The contract includes the ability for the owner to mint tokens, users to burn their tokens, and anyone to transfer or buy tokens when the contract is active. It also provides the functionality to pause and unpause operations as needed.

## Getting Started

### Prerequisites

To interact with this contract, you'll need:

- Basic knowledge of Solidity and ERC20 tokens.
- An Ethereum-compatible wallet (such as MetaMask).
- Access to the Remix IDE or a local development environment like Hardhat or Truffle.
  
### Executing Program

To run this smart contract, you can use **Remix**, an online IDE for Solidity smart contracts. Follow these steps:

1. **Open Remix IDE**  
   Navigate to [Remix](https://remix.ethereum.org/) in your browser.

2. **Create a New File**  
   In the left-hand sidebar, click on the "+" icon and create a new file. Name it `TanuToken.sol`.

3. **Add Contract Code**  
   Copy and paste the TanuToken contract code into the newly created file.

4. **Compile the Contract**  
   Go to the "Solidity Compiler" tab in the left-hand sidebar, select the appropriate compiler version (`0.8.20` or above), and click on "Compile TanuToken.sol".

5. **Deploy the Contract**  
   Navigate to the "Deploy & Run Transactions" tab. Ensure you select the "TanuToken" contract from the dropdown menu, and then click on the "Deploy" button.

6. **Interacting with the Contract**  
   After deployment, you can interact with the contract by calling its functions (mint, burn, transfer, buy tokens, etc.) via the Remix interface.

7. **Import Tokens into Wallet**  
   Once the contract is deployed, you can use the contract address to import your TanuTokens into an Ethereum-compatible wallet (e.g., MetaMask).

## Contract Functions

- **Mint Tokens:**  
  Allows the owner to mint new tokens to a specified address.

- **Burn Tokens:**  
  Token holders can burn their tokens, reducing the total supply.

- **Transfer Tokens:**  
  Tokens can be transferred between addresses when the contract is not paused.

- **Buy Tokens:**  
  Users can buy tokens by sending Ether to the contract when it is not paused.

- **Pause/Unpause Contract:**  
  The contract owner can pause or unpause the contract, restricting or allowing transfers and purchases.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Authors

Tanu Priya  
[@TanuPriya](tanupriya1649@gmail.com)
