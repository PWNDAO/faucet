// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import { Script, console2 } from "forge-std/Script.sol";

import { PWNFaucet } from "../src/PWNFaucet.sol";


contract Deploy is Script {

    function run() external {
        vm.startBroadcast();

        PWNFaucet faucet = new PWNFaucet();
        console2.log("PWNFaucet deployed at:", address(faucet));

        vm.stopBroadcast();
    }

}
