// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import { ERC1155 } from "openzeppelin/token/ERC1155/ERC1155.sol";


contract PWNFaucet1155 is ERC1155 {

    uint256 public lastTokenId;


    constructor(string memory uri_) ERC1155(uri_) {

    }


    function mint(address receiver, uint256 amount) external {
        _mint(receiver, ++lastTokenId, amount, "");
    }

}
