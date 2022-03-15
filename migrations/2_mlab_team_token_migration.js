const MlabTeamToken = artifacts.require("MlabTeamToken");

module.exports = function(deployer) {
    deployer.deploy(MlabTeamToken);
};