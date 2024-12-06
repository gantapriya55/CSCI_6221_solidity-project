// interact.js

// Ensure MetaMask is installed and Ethereum is available
if (typeof window.ethereum !== 'undefined') {
    const web3 = new Web3(window.ethereum);

    // Request access to MetaMask accounts
    window.ethereum.request({ method: "eth_requestAccounts" }).then(accounts => {
        const contractAddress = "0xYourDeployedContractAddress"; // Replace with the actual contract address

        const abi = [
            {
                "inputs": [
                    { "internalType": "string", "name": "name", "type": "string" },
                    { "internalType": "string", "name": "origin", "type": "string" },
                    { "internalType": "uint8", "name": "role", "type": "uint8" }
                ],https://github.com/gantapriya55/CSCI_6221_solidity-project/tree/main
                "name": "registerProduct",
                "outputs": [],
                "stateMutability": "nonpayable",
                "type": "function"
            },
            {
                "inputs": [
                    { "internalType": "uint256", "name": "productId", "type": "uint256" },
                    { "internalType": "address", "name": "newOwner", "type": "address" },
                    { "internalType": "uint8", "name": "newRole", "type": "uint8" }
                ],
                "name": "transferOwnership",
                "outputs": [],
                "stateMutability": "nonpayable",
                "type": "function"
            }
            // Add other ABI functions as needed
        ];

        const contract = new web3.eth.Contract(abi, contractAddress);

        // Define your contract
