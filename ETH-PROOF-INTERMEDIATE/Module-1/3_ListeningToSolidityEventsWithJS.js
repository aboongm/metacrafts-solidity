let contract_abi = abi_json _code_during_contract_compilation;
let EventTest = web3.eth.contract(contract_abi);
let EventTestContract = ClientReceipt.at("0x98...");

EventTestContract.transfer(function(err, data) {
   if (!err)
   console.log(data);
});