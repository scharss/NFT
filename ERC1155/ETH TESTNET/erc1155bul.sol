// SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;

import "@openzeppelin/contracts@4.7.2/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts@4.7.2/token/ERC1155/extensions/ERC1155Burnable.sol";
import "@openzeppelin/contracts@4.7.2/access/Ownable.sol";

contract ERC1155BUL64 is ERC1155, ERC1155Burnable, Ownable {
    constructor()
        ERC1155("https://ipfs.io/ipfs/QmQXnQTrVmbtcRZP3GF3vEo9K35MwL5jaAhk3Nw1t9kYge/{id}.json")
    {


        for(uint i=1; i<=5; i++){
          _mint(msg.sender, i /* Id  */, 1 /* Cantidad */, "");
        }

    }
}
