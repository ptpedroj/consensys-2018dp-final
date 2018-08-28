pragma solidity ^0.4.24;

import "openzeppelin-solidity/contracts/math/SafeMath.sol";
import "openzeppelin-solidity/contracts/lifecycle/Destructible.sol";
import { ManagedBounty } from "./ManagedBounty.sol";

contract BountyBoard is Destructible {
  using SafeMath for uint256;
  event LogBountyCreated(address owner, address bountyContract);

  mapping(address => address[]) internal bountyBuckets;

  function createBounty(string description) public returns(address) {
    bountyBuckets[msg.sender].push(new ManagedBounty(description));
    uint256 lastBountyIndex = bountyBuckets[msg.sender].length - 1;
    emit LogBountyCreated(msg.sender, bountyBuckets[msg.sender][lastBountyIndex]);
    return bountyBuckets[msg.sender][lastBountyIndex];
  }

  function getBounties() public view returns(address[]) {
    return bountyBuckets[msg.sender];
  }
}