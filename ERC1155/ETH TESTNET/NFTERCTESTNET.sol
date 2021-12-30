// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract NFT1155TEST is ERC1155 {
    constructor() ERC1155("https://raw.githubusercontent.com/scharss/NFT/main/ERC1155/ETH%20TESTNET/img/{id}.json") {
        _mint(msg.sender, 1 /* Id RarerMap */, 10 /* Cantidad */, "");
        _mint(msg.sender, 2 /* Id RarerProto      */, 20 /* Cantidad */, "");
    }
}
