// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {Script, console2} from "forge-std/Script.sol";

import {PWNFaucet} from "../src/PWNFaucet.sol";


/*
forge script script/PWNFaucet.s.sol:Deploy \
--rpc-url $CELO_URL \
--private-key $PRIVATE_KEY_PWN_PROD \
--verify --verifier sourcify \
--broadcast
*/
contract Deploy is Script {

    function run() external {
        vm.startBroadcast();

        PWNFaucet faucet = new PWNFaucet();
        console2.log("PWNFaucet deployed at:", address(faucet));

        console2.log("PWND ERC20 deployed at:", address(faucet.t20D()));
        console2.log("PWNS ERC20 deployed at:", address(faucet.t20S()));
        console2.log("PWN Faucet ERC721 deployed at:", address(faucet.t721()));
        console2.log("PWN Faucet ERC1155 deployed at:", address(faucet.t1155()));

        vm.stopBroadcast();
    }

}
