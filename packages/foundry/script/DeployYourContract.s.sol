//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "../contracts/DimSumVault.sol";
import "@openzeppelin/contracts/mocks/token/ERC20Mock.sol";
import "./DeployHelpers.s.sol";

// contract MockERC20 is ERC20 {
//     constructor(string memory name, string memory symbol, uint256 initialSupply) ERC20(name, symbol) {
//         _mint(msg.sender, initialSupply);
//     }
// }

contract DeployYourContract is ScaffoldETHDeploy {
  // use `deployer` from `ScaffoldETHDeploy`
  function run() external ScaffoldEthDeployerRunner {
    // Deploy ERC20Mock
    ERC20Mock mockToken = new ERC20Mock();
    // Deploy DimSumVault with the mock token
    DimSumVault yourContract = new DimSumVault(mockToken);
    // YourContract yourContract = new YourContract(msg.sender);

    console.logString(
      string.concat(
        "YourContract deployed at: ", vm.toString(address(yourContract))
      )
    );
  }
}
