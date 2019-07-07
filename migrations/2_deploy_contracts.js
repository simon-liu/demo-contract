var Demo = artifacts.require("Demo");
module.exports = function(deployer, network, accounts) {
    deployer.deploy(Demo, accounts[1]);
};