// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "@openzeppelin/contracts@4.4.1/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts@4.4.1/access/Ownable.sol";

contract NFT1155TEST2 is ERC1155, Ownable {
    constructor()
        ERC1155("https://raw.githubusercontent.com/scharss/NFT/main/ERC1155/ETH%20TESTNET/img/0000000000000000000000000000000000000000000000000000000000000001.json")
    {}

    function setURI(string memory newuri) public onlyOwner {
        _setURI(newuri);
    }

    function mint(address account, uint256 id, uint256 amount, bytes memory data)
        public
        onlyOwner
    {
        _mint(account, id, amount, data);
    }

    function mintBatch(address to, uint256[] memory ids, uint256[] memory amounts, bytes memory data)
        public
        onlyOwner
    {
        _mintBatch(to, ids, amounts, data);
    }
}
