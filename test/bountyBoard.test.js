var BountyBoard = artifacts.require("./BountyBoard.sol");

contract('BountyBoard', function(accounts) {
  const owner = accounts[0];
  const alice = accounts[1];
  const bob = accounts[2];
  const bountyRewards = web3.toBigNumber(1);

  it("can create bounty board", async () => {
    const board = await BountyBoard.deployed();
    assert.isNotNull(board);
  });

});