pragma solidity ^0.4.24;

import { Bounty } from "openzeppelin-solidity/contracts/Bounty.sol";
import { BountyClaimant } from "./BountyClaimant.sol";

contract ManagedBounty is Bounty {
  string internal description;

  constructor (string newDescription) public {
    description = newDescription;
  }

  function getDescription() public view returns(string) {
    return description;
  }

  function setDescription(string newDescription) external onlyOwner {
    description = newDescription;
  }

  function deployContract() internal onlyOwner returns(address) {
    return new BountyClaimant();
  }
}