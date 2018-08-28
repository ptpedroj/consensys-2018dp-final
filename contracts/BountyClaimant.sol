pragma solidity ^0.4.24;

import "openzeppelin-solidity/contracts/lifecycle/Destructible.sol";
import { Target } from "openzeppelin-solidity/contracts/Bounty.sol";

contract BountyClaimant is Target, Destructible {
  address internal claimant;

  function getClaimant() public view returns(address) {
    return claimant;
  }

  function setClaimant(address newClaimant) external onlyOwner {
    claimant = newClaimant;
  }

  function checkInvariant() public returns(bool) {
    return claimant == address(0);
  }
}