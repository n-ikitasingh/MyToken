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
