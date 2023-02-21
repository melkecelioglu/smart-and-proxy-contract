// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@thirdweb-dev/contracts/extension/ProxyForUpgradeable.sol";


contract ProxyForNumber is ProxyForUpgradeable {
    constructor(address _logic, bytes memory _data) payable ProxyForUpgradeable(_logic, _data){}
}