const RareEstateToken = artifacts.require("RareEstateToken");

module.exports = function (deployer) {
    deployer.deploy(RareEstateToken);
};