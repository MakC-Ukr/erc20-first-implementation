
// eslint-disable-next-line no-undef
var TokenContract = artifacts.require("../build/contracts/TokenContract.json");
// var Vendor =  artifacts.require("../contracts/Vendor.sol");

module.exports = async (deployer, network, accounts) => {
  console.log(TokenContract);
  deployer.deploy(TokenContract, {from: accounts[0]});

  // let instance = await TokenContract.deployed();
  // // console.log(instance.methods.totalSupply().call());

  // console.log("HEHEHEHEHE: TokenContract address is : ", TokenContract.address);
};


//try removing network and accounts part