# CustomToken Smart Contract

## Overview
CustomToken is an ERC20 token with minting and burning features. It uses OpenZeppelin for secure token and ownership management.

## Token Details
- **Name**: Khalid  
- **Symbol**: KLD  

## Functions
- **`createTokens(address recipient, uint256 tokenAmount)`**: Mint tokens (owner-only).  
- **`destroyTokens(uint256 tokenAmount)`**: Burn tokens (user-only).  

## Requirements
- **Solidity**: `^0.8.0`  
- **Dependencies**: OpenZeppelin ERC20 and Ownable contracts.  

