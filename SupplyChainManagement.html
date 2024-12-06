<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ethereum Supply Chain</title>
    <script src="https://cdn.jsdelivr.net/npm/web3@latest/dist/web3.min.js"></script>
</head>
<body>
    <h1>Ethereum Supply Chain Management</h1>

    <script>
        // Check if Web3 is available
        if (typeof window.ethereum !== 'undefined') {
            const web3 = new Web3(window.ethereum);

            // Request access to the user's MetaMask accounts
            window.ethereum.request({ method: "eth_requestAccounts" }).then(accounts => {
                const contractAddress = "0xYourDeployedContractAddress"; // Replace with your deployed contract address

                // ABI of the SupplyChain contract
                const abi = [
                    {
                        "inputs": [
                            { "internalType": "string", "name": "name", "type": "string" },
                            { "internalType": "string", "name": "origin", "type": "string" },
                            { "internalType": "uint8", "name": "role", "type": "uint8" }
                        ],
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
                    },
                    {
                        "inputs": [
                            { "internalType": "uint256", "name": "productId", "type": "uint256" },
                            { "internalType": "string", "name": "newStatus", "type": "string" }
                        ],
                        "name": "updateStatus",
                        "outputs": [],
                        "stateMutability": "nonpayable",
                        "type": "function"
                    },
                    {
                        "inputs": [{ "internalType": "uint256", "name": "productId", "type": "uint256" }],
                        "name": "getOwnershipHistory",
                        "outputs": [{ "internalType": "address[]", "name": "", "type": "address[]" }],
                        "stateMutability": "view",
                        "type": "function"
                    }
                ];

                // Instantiate the contract
                const contract = new web3.eth.Contract(abi, contractAddress);

                // Example call: Register a new product
                const registerProduct = async (name, origin, role) => {
                    const accounts = await web3.eth.getAccounts();
                    await contract.methods.registerProduct(name, origin, role).send({ from: accounts[0] });
                };

                // Example call: Transfer ownership
                const transferOwnership = async (productId, newOwner, newRole) => {
                    const accounts = await web3.eth.getAccounts();
                    await contract.methods.transferOwnership(productId, newOwner, newRole).send({ from: accounts[0] });
                };

                // Example call: Update product status
                const updateStatus = async (productId, newStatus) => {
                    const accounts = await web3.eth.getAccounts();
                    await contract.methods.updateStatus(productId, newStatus).send({ from: accounts[0] });
                };

                // Example call: Get ownership history
                const getOwnershipHistory = async (productId) => {
                    const history = await contract.methods.getOwnershipHistory(productId).call();
                    console.log('Ownership History:', history);
                };

                // Uncomment the following to test different actions:
                // registerProduct("Laptop", "USA", 0);  // 0 is Supplier role
                // transferOwnership(1, "0xNewOwnerAddress", 1); // Transfer to Manufacturer
                // updateStatus(1, "Shipped");
                // getOwnershipHistory(1);

            }).catch(error => {
                console.error("Error accessing accounts:", error);
            });

        } else {
            alert("Please install MetaMask to interact with Ethereum.");
        }
    </script>
</body>
</html>
