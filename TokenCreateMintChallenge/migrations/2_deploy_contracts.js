const Migrations = artifacts.require("IntermediateCrafterToken");

module.exports = function (deployer) {
    deployer.deploy(Migrations, 20000000);
}