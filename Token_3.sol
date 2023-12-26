// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Token_3 is ERC20, Ownable {

constructor() ERC20("TokenFrERC", "ERC") Ownable(msg.sender) {
    _mint(_msgSender(), 100 * 10 ** decimals());
}

    // Mint Function
    function mint(address account, uint256 amount) external onlyOwner {
        _mint(account, amount);
    }

    // Burn Functon
    function burn(uint256 amount) external onlyOwner {
        _burn(_msgSender(), amount);
    }

    // Transfer Function
    function transferWithCheck(address to, uint256 amount) external {

        _transfer(_msgSender(), to, amount);
    }
}
