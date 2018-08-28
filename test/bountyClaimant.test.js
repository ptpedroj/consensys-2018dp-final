var BountyClaimant = artifacts.require("./BountyClaimant.sol");

contract('BountyClaimant', function(accounts) {
  const owner = accounts[0];
  const alice = accounts[1];
  const bob = accounts[2];
  const bountyRewards = web3.toBigNumber(1);

  it("can create bounty claimant", async () => {
    const claimant = await BountyClaimant.deployed();
    assert.isNotNull(claimant);
  });
});