// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13 ;

import {Script,console} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract DeployScript is Script{
    
    function setUp()public{}

    function run()external returns(Counter){
        uint256 my_privateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(my_privateKey);
        //deploy the counter
        Counter counter = new Counter();
        console.log("Deployed to",address(counter));
        vm.stopBroadcast();
        return counter;

    }
}