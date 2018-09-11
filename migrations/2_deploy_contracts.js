var BountyClaimant = artifacts.require("BountyClaimant");
var BountyBoard = artifacts.require("BountyBoard");
var ManagedBounty = artifacts.require("ManagedBounty");

module.exports = function(deployer) {
  deployer.deploy(BountyBoard);
  deployer.deploy(BountyClaimant);
  deployer.deploy(ManagedBounty, "");
};
