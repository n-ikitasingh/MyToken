# MyToken
This Solidity program is a simple token implementation that demonstrates the basic syntax and functionality of the Solidity programming language. The purpose of this program is to serve as a starting point for those who are new to Solidity and want to get a feel for how token contracts work.

# Description
This program is a simple token contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract includes functionalities for minting and burning tokens. This program serves as a simple and straightforward introduction to Solidity token contracts, and can be used as a stepping stone for more complex projects in the future.

# Getting Started
Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., MyToken.sol). Copy and paste the following code into the file:

```
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken{

    // Public variables to store the details about the token
    string public tokenName = "MyToken";
    string public tokenSymbol = "MT1";
    uint public totalToken = 0;

    // Mapping to store balances
    mapping(address => uint) public balances;

    // Mint function to increase total supply and balance of a given address
    function mint(address _to, uint value) public {
        totalToken += value;
        balances[_to] += value;
    }

    // Burn function to decrease total supply and balance of given address
    function burn(address _from, uint value) public {
        if(balances[_from]>=value)
        {
        totalToken -= value;
        balances[_from] -= value;
        }
    }
}
```
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile MyToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the mint and burn functions. Click on the "MyToken" contract in the left-hand sidebar. To mint tokens, input the recipient address and amount, and click on the "mint" function. To burn tokens, input the account address and amount, and click on the "burn" function.

## Authors
Nikita Singh
[Nikita Singh](https://www.linkedin.com/in/nikita-singh-08318924b)

## License
This project is licensed under the MIT License - see the LICENSE.md file for the details.
