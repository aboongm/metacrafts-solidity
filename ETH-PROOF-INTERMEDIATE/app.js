const Web3 = require('web3');
const contract = require('@truffle/contract');

const provider = new Web3.providers.HttpProvider('http://localhost:8545');
const web3 = new Web3(provider);

const eventContract = contract(require('./build/contracts/EventContract.json'));
eventContract.setProvider(provider);

async function watchEvents() {
  const instance = await eventContract.deployed();

  // Watch for EventOne
  instance.EventOne({ fromBlock: 0 }, function (error, event) {
    console.log('EventOne: ', event.returnValues);
  });

  // Watch for EventTwo
  instance.EventTwo({ fromBlock: 0 }, function (error, event) {
    console.log('EventTwo: ', event.returnValues);
  });

  // Watch for EventThree
  instance.EventThree({ fromBlock: 0 }, function (error, event) {
    console.log('EventThree: ', event.returnValues);
  });
}

watchEvents();
