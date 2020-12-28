const DefiInsurance = artifacts.require("DefiInsurance");

module.exports = function (deployer) {
    deployer.deploy(DefiInsurance);
};