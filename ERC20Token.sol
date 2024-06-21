// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';

contract ERC20Tokens is ERC20 {
    address public admin;
    address sender = msg.sender;
    constructor() ERC20("Super Saiyan", "SS"){
        _mint(msg.sender, 10 * 10 ** 18);
        admin = msg.sender;
    }

    function mint(address to, uint amount) external {
        require(msg.sender == admin, "only admin can access this functionality");
        _mint(to, amount);
    }

    function burn(uint amount) external {
        _burn(msg.sender, amount);
    }
}
