# MetacraftToken
MetacraftToken is a custom ERC20 token implemented in Solidity. This token includes additional functionalities such as minting by the contract owner and burning by any user. The token's symbol is "MTC".

## Features
- **Minting**: The contract owner can mint tokens to any address.
- **Burning**: Any user can burn their own tokens.
- **Transferring**: Users can transfer tokens to other addresses.
## Contract Details
### Constructor
The constructor initializes the token with the following parameters:

- Name: Metacraft
- Symbol: MTC
It also sets the deployer of the contract as the owner and mints an initial supply of 10 tokens (multiplied by 10^decimals) to the contract address.

### Modifiers
- `onlyOwner` : Restricts certain functions to be callable only by the owner.
### Functions
- `mintTokens(address recipient, uint256 amount):` Allows the owner to transfer tokens from the contract's balance to a specified recipient address.

  - **Parameters**:
    - `recipient`: The address to receive the minted tokens.
    - `amount`: The number of tokens to be minted.
   - **Requirements**:
     - Caller must be the owner.
      - The contract must have a sufficient balance to transfer.
 - `burnTokens(uint256 amount)`: Allows any user to burn a specified amount of their own tokens.

    - **Parameters**:
      - `amount`: The number of tokens to be burned.
  - `transferTokens(address recipient, uint256 amount):` Allows a user to transfer tokens to another address.

    - **Parameters**:
      - `recipient`: The address to receive the tokens.
      - `amount`: The number of tokens to be transferred.
    - **Returns**: `bool` indicating the success of the transfer.
## Deployment
To deploy the `MetacraftToken` contract:

1. Open [Remix](https://remix.ethereum.org/).
2. Create a new file named MetacraftToken.sol and paste the Solidity code.
3. Compile the MetacraftToken.sol file using the Solidity compiler.
4. Deploy the contract using the "Deploy & Run Transactions" tab in Remix.
## Usage
### Minting Tokens
Only the owner can mint tokens. To mint tokens:

1. Call the `mintTokens` function.
2. Provide the recipient address and the amount of tokens to mint.
   
### Burning Tokens
Any user can burn their own tokens. To burn tokens:

1. Call the burnTokens function.
2. Provide the amount of tokens to burn.
   
### Transferring Tokens
Any user can transfer tokens to another address. To transfer tokens:

1. Call the transferTokens function.
2. Provide the recipient address and the amount of tokens to transfer.
   
### Example

```solidity
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
```
## Authors
Tanupriya 
@Tanu
## License
This project is licensed under the MIT License.
