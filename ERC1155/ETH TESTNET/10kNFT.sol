// SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;

import "@openzeppelin/contracts@4.7.2/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts@4.7.2/token/ERC1155/extensions/ERC1155Burnable.sol";
import "@openzeppelin/contracts@4.7.2/access/Ownable.sol";

contract NFTUP3 is ERC1155, ERC1155Burnable, Ownable {
    constructor()
        ERC1155("https://ipfs.io/ipfs/bafybeigutzu3ccjxhnrkv3cqpwbeltryjr4m43plgra5cols34swqtkvje/{id}.json")
    {


        for(uint i=1; i<=1000; i++){
          _mint(msg.sender, i /* Id  */, 1 /* Cantidad */, "");
        }

    }
}
