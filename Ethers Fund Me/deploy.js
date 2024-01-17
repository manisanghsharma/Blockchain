const ethers = require("ethers");
// const solc = require("solc")
const fs = require("fs");

async function main() {
	//RPC - HTTP://127.0.0.1:7545
	const provider = new ethers.JsonRpcProvider("http://127.0.0.1:7545"); //RPC Provider

	const wallet = new ethers.Wallet(
		"0x25b98a59551b35c41a3faecd4d6b4483ca2d7122db46a2f04cb92345e254ebdb",
		provider
	);

	const abi = fs.readFileSync("./SimpleStorage.abi", "utf8"); //fs - read files - read sync
	const binary = fs.readFileSync("./SimpleStorage.bin", "utf8");

	const contractFactory = new ethers.ContractFactory(abi, binary, wallet); //cf is just a thing that is used to deploy contracts

	console.log("Deploying, please wait...");

	const contract = await contractFactory.deploy( ); //Wait till this executes - await imp

	console.log(contract);

    // const transReceipt = await contract.deploymentTransaction();
    // console.log(transReceipt);

}

main()
	.then(() => process.exit(0))
	.catch((error) => {
		console.error(error);
		process.exit(1);
	});
