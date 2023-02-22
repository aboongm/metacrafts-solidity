# Hello World! in Solidity

## Install

1. Install [Node.js](https://nodejs.org)

   Download and install from the official site.

2. Install [Truffle](https://github.com/trufflesuite/truffle)

   ```bash
   npm install -g truffle
   ```

## Initialize

1. Initialize Truffle in your project folder

   ```bash
   truffle init
   ```

   After initialization, you will find two folders called `contracts` and `migrations`. Contracts go in the `contracts` folder while contract deployment settings go in `migrations`.

2. The "Hello World!" contract

   This is an example of a "Hello World!" contract in Solidity.
   "HelloWorld.sol" in `contracts` contains the following code:

   ```solidity
   // SPDX-License-Identifier: MIT
   // compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
   pragma solidity ^0.8.17;

   contract HelloWorld {
       string public greet = "Hello World!";
   }
   ```

3. Prepare the migration

   "2_deploy_migration.js" in `migrations` contains the following code:

   ```javascript
   var HelloWorld = artifacts.require('HelloWorld');
   module.exports = function (deployer) {
     deployer.deploy(HelloWorld);
   };
   ```

4. Start Truffle console in development mode

   ```bash
   truffle develop
   ```

   In the Truffle console, execute

   ```bash
   compile
   migrate
   ```

   If you want to remigrate existing contracts, run `migrate --reset` instead of simply `migrate`.

5. Test your contract

   In the interactive Truffle console, run the following commands:

   ```javascript
   let instance = await HelloWorld.deployed();
   instance.greet();
   ```

   Then you will see:

   ```bash
   'Hello World!'
   ```
