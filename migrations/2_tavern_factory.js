const TavernFactory = artifacts.require("TavernFactory");

module.exports = function (deployer) {
  deployer.deploy(TavernFactory);
};
