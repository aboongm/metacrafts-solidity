// let contract_abi = abi_json_code_during_contract_compilation;
// let EventTest = web3.eth.contract(contract_abi);
// let EventTestContract = EventTest.at('0x98...');

// EventTestContract.Deposit().watch(function (err, result) {
//   if (!err) {
//     console.log('Deposit event triggered!');
//     console.log(result.args);
//   }
// });

const abi = require('./build/contracts/EventContract.json').abi;
const contractAddress = '0x123...'; // replace with your contract address
const contractInstance = new web3.eth.Contract(abi, contractAddress);

contractInstance.events
  .EventOne()
  .on('data', (event) => {
    console.log('EventOne data:', event.returnValues);
  })
  .on('error', console.error);

contractInstance.events
  .EventTwo()
  .on('data', (event) => {
    console.log('EventTwo data:', event.returnValues);
  })
  .on('error', console.error);

contractInstance.events
  .EventThree()
  .on('data', (event) => {
    console.log('EventThree data:', event.returnValues);
  })
  .on('error', console.error);
