// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@thirdweb-dev/contracts/extension/Upgradeable.sol";
import "@thirdweb-dev/contracts/extension/Initializable.sol";

contract Number is Upgradeable, Initializable{
  uint256 public num;
  address public deployer;

   function initialize(uint256 _initialValue) external initializer{
    require(_initialValue > 0);
    num= _initialValue;
    deployer = msg.sender;
   }
   function doubleNumber() external{
    num *=2;

   }
   function _authorizeUpgrade(address) internal view override{
    require(msg.sender == deployer);
   }
}
