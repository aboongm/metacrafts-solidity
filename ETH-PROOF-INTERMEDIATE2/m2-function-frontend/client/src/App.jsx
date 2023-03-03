import { React, useState, useEffect } from 'react';
import { ethers } from 'ethers';
import { abi } from './contracts/constants';

const App = () => {
  // deploy simple token contract and paste deployed contract address here. This value is local ganache chain
  let contractAddress = '0x8c89c122C6892550dE994c9980542cea85C30e2f';

  const [errorMessage, setErrorMessage] = useState(null);
  const [defaultAccount, setDefaultAccount] = useState(null);
  const [connButtonText, setConnButtonText] = useState('Connect Wallet');

  const [provider, setProvider] = useState(null);
  const [signer, setSigner] = useState(null);
  const [contract, setContract] = useState(null);

  const connectWalletHandler = () => {
    if (window.ethereum && window.ethereum.isMetaMask) {
      window.ethereum
        .request({ method: 'eth_requestAccounts' })
        .then((result) => {
          setDefaultAccount(result[0]);
          updateEthers();
          setConnButtonText('Wallet Connected');
        })
        .catch((error) => {
          setErrorMessage(error.message);
        });
    } else {
      console.log('Need to install MetaMask');
      setErrorMessage('Please install MetaMask browser extension to interact');
    }
  };

  const updateEthers = () => {
    let tempProvider = new ethers.providers.Web3Provider(window.ethereum);
    setProvider(tempProvider);

    let tempSigner = tempProvider.getSigner();
    setSigner(tempSigner);

    let tempContract = new ethers.Contract(contractAddress, abi, tempSigner);
    setContract(tempContract);
  };

  useEffect(() => {
    updateEthers();
  }, []);

  const setValueHandler = async () => {
    let value = document.getElementById('recieverAddress').value;
    let tx = await contract.setValue(value);
    let receipt = await tx.wait();
    console.log(receipt);
  };

  const getValueHandler = async () => {
    console.log('get value');
    let value = await contract.getValue();
    const valueString = value.toString();
    console.log(value, valueString);
    document.getElementById('getValueId').textContent = valueString;
  };

  return (
    <div className="container mx-auto border flex justify-center my-6 ">
      <div className="widthmax w-full">
        <h2 className="text-4xl mt-8 font-bold text-center">
          {' '}
          Some Functions Dapp
        </h2>
        <p className="font-sm mb-4 text-center">
          Set Value, Get Value, and Multiply Value{' '}
        </p>
        <div className="px-8"></div>

        <div className="px-8 mb-8">
          <button
            className=" w-full border rounded bg-gray-900 text-gray-100 py-3 px-5 text-lg font-semibold hover:bg-gray-700"
            onClick={connectWalletHandler}
          >
            {connButtonText}
          </button>
          <h3 className="w-full text-left border rounded bg-gray-200 text-gray-900 my-2 py-3 px-5 text-lg">
            Address: &nbsp;
            <span className="font-semibold">{defaultAccount}</span>
          </h3>
          <div className="flex justify-between">
            <button
              className="w-full border rounded bg-gray-900 text-gray-100 my-2 py-3 px-5 text-lg font-semibold hover:bg-gray-700"
              onClick={setValueHandler}
            >
              Set Value
            </button>
            <input
              className="w-full text-left border rounded bg-gray-100 text-gray-900 my-2 py-3 px-5 text-lg"
              type="text"
              id="recieverAddress"
            />
          </div>
          <div className="flex justify-between">
            <button
              className="w-full border rounded bg-gray-900 text-gray-100 my-2 py-3 px-5 text-lg font-semibold hover:bg-gray-700"
              onClick={getValueHandler}
            >
              Get Value
            </button>
            <p
              className="w-full text-left border rounded bg-gray-100 text-gray-900 my-2 py-3 px-5 text-lg"
              id="getValueId"
            ></p>
          </div>
        </div>
      </div>
    </div>
  );
};

export default App;
