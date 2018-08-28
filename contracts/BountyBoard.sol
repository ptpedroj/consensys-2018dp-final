pragma solidity ^0.4.24;

import "openzeppelin-solidity/contracts/math/SafeMath.sol";
import "openzeppelin-solidity/contracts/lifecycle/Destructible.sol";
import { ManagedBounty } from "./ManagedBounty.sol";

contract BountyBoard is Destructible {
  using SafeMath for uint256;

  mapping(address => address[]) internal bountyBuckets;

  function CreateBounty(string description) public returns(address) {
    bountyBuckets[msg.sender].push(new ManagedBounty(description));
    uint256 lastBountyIndex = bountyBuckets[msg.sender].length - 1;
    return bountyBuckets[msg.sender][lastBountyIndex];
  }
}