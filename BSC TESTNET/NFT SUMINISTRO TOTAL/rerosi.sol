// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "@openzeppelin/contracts@4.5.0/token/ERC721/ERC721.sol";

contract Rerosi is ERC721 {
    constructor() ERC721("Rerosi", "RRS") {
        _mint(msg.sender, 10 );
    }

    function _baseURI() internal pure override returns (string memory) {
        return "https://ipfs.io/ipfs/QmPgdqMNa4Ehq432ryBnhHKDrKs6qrN5eqFr3sv9BiQHkE?filename=rosi.json";
    }
}
