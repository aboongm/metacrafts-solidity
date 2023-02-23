// var HelloWorld = artifacts.require('HelloWorld');
// module.exports = function (deployer) {
//   deployer.deploy(HelloWorld);
// };

// var ModifierAdmin = artifacts.require('ModifierAdmin');
// module.exports = function (deployer) {
//   deployer.deploy(ModifierAdmin);
// };

const EventContract = artifacts.require('EventContract');

module.exports = function (deployer) {
  deployer.deploy(EventContract);
};
