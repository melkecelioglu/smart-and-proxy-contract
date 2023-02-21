// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "src/Number.sol";

contract InitializeTest is Test {
    function setUp() public {}

    function testInitializeData() public {
        uint256 initialValue =5;
        emit log_bytes(
            abi.encodeCall(
                Number.initialize,
                (initialValue)
            )
        );
     }
}
