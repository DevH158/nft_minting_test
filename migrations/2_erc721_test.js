const ERC721Test = artifacts.require("ERC721Test");

module.exports = function (deployer) {
    deployer.deploy(ERC721Test);
};
