var BountyBoard = artifacts.require("BountyBoard");
var ManagedBounty = artifacts.require("ManagedBounty");
var BountyClaimant = artifacts.require("BountyClaimant");

module.exports = function(deployer) {
  deployer.deploy(BountyBoard);
  deployer.deploy(ManagedBounty);
  deployer.deploy(BountyClaimant);
};
