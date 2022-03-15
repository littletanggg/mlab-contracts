/**
MLAB team token: MLAB
Meme token for MLAB team internal using
*/

// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.12;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MlabTeamToken is ERC20 {
    address public admin;

    string private _name = "MLAB team token";
    string private _symbol = "MLAB";
    uint8 private _decimals = 2;

    constructor() ERC20(_name, _symbol) {
        _mint(msg.sender, 100000 * 10 ** _decimals);
        admin = msg.sender;
    }

    function mint(address to, uint amount) external {
        require(msg.sender == admin, 'only admin');
        _mint(to, amount);
    }

    function burn(uint amount) external {
        _burn(msg.sender, amount);
    }
}