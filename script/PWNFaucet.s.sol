// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {Script, console2} from "forge-std/Script.sol";

import {PWNFaucet} from "../src/PWNFaucet.sol";


/*
forge script script/PWNFaucet.s.sol:Deploy \
--rpc-url $RPC_URL \
--private-key $PRIVATE_KEY \
--verify --etherscan-api-key $ETHERSCAN_API_KEY \
--broadcast
*/
contract Deploy is Script {

    function run() external {
        vm.startBroadcast();

        PWNFaucet faucet = new PWNFaucet();
        console2.log("PWNFaucet deployed at:", address(faucet));

        console2.log("PWNFaucet20 deployed at:", address(faucet.t20()));
        console2.log("PWNFaucet721 deployed at:", address(faucet.t721()));
        console2.log("PWNFaucet1155 deployed at:", address(faucet.t1155()));

        vm.stopBroadcast();
    }

}
