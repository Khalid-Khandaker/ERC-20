// SPDX-License-Identifier: MIT
//Khalid Khandkaker : 202110233@fit.edu.ph
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Token is ERC20, Ownable {
    constructor(address initialHolder) 
        ERC20("Khalid", "KLD") 
        Ownable(initialHolder) 
    {}

    function createToken(address recipient, uint256 tokenAmount) public onlyOwner {
        _mint(recipient, tokenAmount);
    }

    function destroyToken(uint256 tokenAmount) public {
        _burn(msg.sender, tokenAmount);
    }

    function transferToken(address recipient, uint256 amount) public returns (bool) {
        _transfer(msg.sender, recipient, amount);
        return true;
    }
}
