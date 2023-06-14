import { ethers } from "hardhat";

async function main() {
  const Sample = await ethers.getContractFactory("Sample");
  const sample = await Sample.deploy();
  await sample.deployed();

  console.log(
    `Contract Deployed at ${sample.address}`
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
