// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/token/ERC1155/extensions/ERC1155Supply.sol";

contract ERC1155Test is ERC1155Supply, Ownable {
    using SafeMath for uint256;

    uint256 _tokenCnt;

    constructor() ERC1155("") {
        _tokenCnt = 1;
    }

    function ownerOf(address holder, uint256 tokenId) public view returns (bool) {
        return balanceOf(holder, tokenId) != 0;
    }

    function bulkMint(address to, uint256 quantity) public onlyOwner {
        // 1: 82719
        // 5: 272296
        // 10: 509271
        // 50: 2405153
        // 200: 9516101
        uint256 _id = _tokenCnt;
        for (uint256 i = 0; i < quantity; i++) {
            _mint(to, _id, 1, "");
            _id += 1;
        }
        _tokenCnt = _id;
    }
}