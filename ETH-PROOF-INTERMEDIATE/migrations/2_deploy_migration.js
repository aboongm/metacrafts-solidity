// var HelloWorld = artifacts.require('HelloWorld');
// module.exports = function (deployer) {
//   deployer.deploy(HelloWorld);
// };

var ModifierAdmin = artifacts.require('ModifierAdmin');
module.exports = function (deployer) {
  deployer.deploy(ModifierAdmin);
};
