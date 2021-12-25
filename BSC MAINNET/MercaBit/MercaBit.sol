// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "@openzeppelin/contracts@4.4.1/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.4.1/token/ERC20/extensions/ERC20Burnable.sol";

/// @custom:security-contact admin@mercaplace.com
contract MercaBit is ERC20, ERC20Burnable {
    constructor() ERC20("MercaBit", "MCB") {
        _mint(msg.sender, 100000000 * 10 ** decimals());
    }
}
