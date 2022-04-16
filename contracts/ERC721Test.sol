// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

contract ERC721Test is ERC721Enumerable, Ownable {
    uint256 _tokenCnt;

    constructor() ERC721("ERC721 Test", "ERC721T") {
        _tokenCnt = 1;
    }

    function mintTo(address to) public onlyOwner {
        _safeMint(to, _tokenCnt);
        _tokenCnt += 1;
    }

    function bulkMint(address to, uint256 quantity) public onlyOwner {
        // 1: 148399
        // 5: 615807
        // 10: 1189567
        // 50: 5779652
        // 200: 22992528
        for (uint256 i = 0; i < quantity; i++) {
            mintTo(to);
        }
    }
}