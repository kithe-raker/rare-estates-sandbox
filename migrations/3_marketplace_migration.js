const RareEstateMarketplace = artifacts.require("RareEstateMarketplace");

module.exports = function (deployer) {
    deployer.deploy(RareEstateMarketplace);
};