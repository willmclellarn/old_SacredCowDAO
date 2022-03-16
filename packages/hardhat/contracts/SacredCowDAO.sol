pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";

contract SacredCowDAO {

  event SetPurpose(address sender, string purpose);

  string public purpose = "Enable Access to the Highest Quality Animal Proteins";
  string public purpose2 = "Same as the OG purpose";

  constructor() payable {
    // what should we do on deploy?
    setPurpose("High Quality Animal Protein");
  }
  
  function setPurpose(string memory newPurpose) public {
      purpose = newPurpose;
      console.log(msg.sender,"set purpose to",purpose);
      emit SetPurpose(msg.sender, purpose);
  }

  // to support receiving ETH by default
  receive() external payable {}
  fallback() external payable {}
}
