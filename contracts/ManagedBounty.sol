pragma solidity ^0.5.0;

import "openzeppelin-solidity/contracts/ownership/Ownable.sol";
import "openzeppelin-solidity/contracts/lifecycle/Pausable.sol";
import "openzeppelin-solidity/contracts/payment/PullPayment.sol";
import "openzeppelin-solidity/contracts/math/SafeMath.sol";
import { BountyClaimant } from "./BountyClaimant.sol";

contract ManagedBounty is Ownable, Pausable, PullPayment {
    using SafeMath for uint256;
    string internal description;

    constructor (string memory newDescription) public {
        description = newDescription;
    }

    function getDescription() public view returns(string memory) {
        return description;
    }

    function setDescription(string calldata newDescription) external onlyOwner {
        description = newDescription;
    }
}