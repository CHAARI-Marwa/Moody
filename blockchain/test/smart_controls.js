// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Coin {
    // Events
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Mint(address indexed to, uint256 value);

    // State variables
    address public owner; // The owner of the contract
    mapping(address => uint256) private balances; // Tracks balances of each address

    // Modifier to restrict certain functions to the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can perform this action");
        _;
    }

    // Constructor
    constructor() {
        owner = msg.sender; // Set the deployer as the owner
    }

    // Function to mint new coins (only owner can call this)
    function mint(address to, uint256 amount) public onlyOwner {
        require(to != address(0), "Cannot mint to the zero address");
        balances[to] += amount;
        emit Mint(to, amount);
    }

    // Function to transfer coins from sender to recipient
    function transfer(address to, uint256 amount) public {
        require(to != address(0), "Cannot transfer to the zero address");
        require(balances[msg.sender] >= amount, "Insufficient balance");

        balances[msg.sender] -= amount;
        balances[to] += amount;

        emit Transfer(msg.sender, to, amount);
    }

    // Function to check the balance of an address
    function balanceOf(address account) public view returns (uint256) {
        return balances[account];
    }
}
