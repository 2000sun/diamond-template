import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";
import "hardhat-deploy";
import "dotenv/config";

const config: HardhatUserConfig = {
  solidity: "0.8.19",

  namedAccounts: {
    deployer: 0,
  },

networks: {
  baobab: {
    url: process.env.KLAYTN_BAOBAB_URL || "",
    gasPrice: 25000000000,
    accounts:
      process.env.PRIVATE_KEY !== undefined ? [process.env.PRIVATE_KEY] : [],
  }
},
etherscan: {
  apiKey: "9RB1V42HX9BJ7SI2PS13NTEJIQ9VT8DN5A"
}
 
};

export default config;



