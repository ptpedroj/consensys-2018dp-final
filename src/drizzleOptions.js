import BountyBoard from './../build/contracts/BountyBoard.json'
import ManagedBounty from './../build/contracts/ManagedBounty.json'
import BountyClaimant from './../build/contracts/BountyClaimant.json'

const drizzleOptions = {
  web3: {
    block: false,
    fallback: {
      type: 'ws',
      url: 'ws://127.0.0.1:8545'
    }
  },
  contracts: [
    BountyBoard,
    ManagedBounty,
    BountyClaimant
  ],
  events: {
    BountyBoard: ['LogBountyCreated']
  },
  polls: {
    accounts: 1500
  }
}

export default drizzleOptions