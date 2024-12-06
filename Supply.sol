// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SupplyChain {
    // Define roles in the supply chain
    enum Role {Supplier, Manufacturer, Distributor, Retailer, Consumer}
    
    // Structure for a product
    struct Product {
        uint id;
        string name;
        string origin;
        address currentOwner;
        Role currentRole;
        string status; // e.g., "Created", "In Transit", "Delivered"
        address[] ownershipHistory; // Track ownership trail
    }

    // Mapping to store all products
    mapping(uint => Product) public products;

    // Product counter
    uint public productCounter;

    // Events for monitoring supply chain changes
    event ProductRegistered(uint productId, string name, string origin, address owner, Role role);
    event OwnershipTransferred(uint productId, address from, address to, Role role);
    event StatusUpdated(uint productId, string status);

    // Modifier to restrict access to the current owner
    modifier onlyOwner(uint productId) {
        require(msg.sender == products[productId].currentOwner, "Not authorized");
        _; 
    }

    // Function to register a new product
    function registerProduct(string memory name, string memory origin, Role role) public {
        productCounter++;
        Product storage newProduct = products[productCounter];
        newProduct.id = productCounter;
        newProduct.name = name;
        newProduct.origin = origin;
        newProduct.currentOwner = msg.sender;
        newProduct.currentRole = role;
        newProduct.status = "Created";
        newProduct.ownershipHistory.push(msg.sender);

        emit ProductRegistered(productCounter, name, origin, msg.sender, role);
    }

    // Function to transfer ownership of a product
    function transferOwnership(uint productId, address newOwner, Role newRole) public onlyOwner(productId) {
        Product storage product = products[productId];
        product.ownershipHistory.push(newOwner);
        product.currentOwner = newOwner;
        product.currentRole = newRole;

        emit OwnershipTransferred(productId, msg.sender, newOwner, newRole);
    }

    // Function to update the status of a product
    function updateStatus(uint productId, string memory newStatus) public onlyOwner(productId) {
        products[productId].status = newStatus;

        emit StatusUpdated(productId, newStatus);
    }

    // Function to get product history
    function getOwnershipHistory(uint productId) public view returns (address[] memory) {
        return products[productId].ownershipHistory;
    }
}
