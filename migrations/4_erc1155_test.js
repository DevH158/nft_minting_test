const ERC1155Test = artifacts.require("ERC1155Test");

module.exports = function (deployer) {
    deployer.deploy(ERC1155Test);
};