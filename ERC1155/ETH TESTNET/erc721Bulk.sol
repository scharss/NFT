

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

import "@openzeppelin/contracts@4.7.2/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts@4.7.2/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts@4.7.2/access/Ownable.sol";
import "@openzeppelin/contracts@4.7.2/utils/Counters.sol";

contract Bulk7 is ERC721, ERC721Burnable, Ownable {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIdCounter;

    constructor() ERC721("MyToken", "MTK") {}

    function _baseURI() internal pure override returns (string memory) {
        return "https://ipfs.io/ipfs/QmQWCq7r1WByxdSMxfTGvH54aP6gBLpUJKbodiYXykqeGF/{id}.json";
    }

    function safeMint(address to) public onlyOwner {
        for(uint i; i<=50; i++){
        _safeMint(to, i);
        }
    }
}



contract :   0x8c9c0858856Fc8Af16D0370d9a9f3a2442D62E88