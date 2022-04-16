// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

import "./ERC721A.sol";
import "./ERC721ABurnable.sol";
import "./ERC721AOwnersExplicit.sol";
import "./ERC721APausable.sol";
import "./ERC721AQueryable.sol";

contract ERC721ATest is ERC721A, ERC721ABurnable, ERC721AOwnersExplicit, ERC721AQueryable, Ownable {
    using SafeMath for uint256;

    constructor() ERC721A("ERCA721 Test", "ERCA721T") {}

    function mintTo(address to, uint256 quantity) public onlyOwner {
        // 1: 100639
        // 5: 78479
        // 10: 88279
        // 50: 166679
        // 200: 460679
        _safeMint(to, quantity);
    }
}