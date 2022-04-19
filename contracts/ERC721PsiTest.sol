pragma solidity ^0.8.0;

import "erc721psi/contracts/ERC721Psi.sol";

contract ERC721PsiTest is ERC721Psi {

    constructor() 
        ERC721Psi("ERC721Psi Test", "ERC721PSIT"){
    }

    function mint(uint256 quantity) external payable {
        // _safeMint's second argument now takes in a quantity, not a tokenId. (same as ERC721A)
        _safeMint(msg.sender, quantity);
    }

}