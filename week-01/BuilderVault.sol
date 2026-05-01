// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BuilderVault {

    address public owner;
    string public registryName;
    uint256 public totalBuilders;

    struct Builder {
        string name;
        string projectDescription;
        uint256 totalTipsReceived;
        uint256 registeredAt;
        bool isRegistered;
    }

    mapping(address => Builder) public builders;
    mapping(uint256 => address) public builderIndex;

    event BuilderRegistered(address indexed wallet, string name, string projectDescription, uint256 timestamp);
    event TipSent(address indexed from, address indexed to, uint256 amount, uint256 timestamp);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    modifier onlyRegistered(address _wallet) {
        require(builders[_wallet].isRegistered, "Builder not registered");
        _;
    }

    modifier notAlreadyRegistered() {
        require(!builders[msg.sender].isRegistered, "Already registered");
        _;
    }

    constructor(string memory _registryName) {
        owner = msg.sender;
        registryName = _registryName;
        totalBuilders = 0;
    }

    function registerAsBuilder(string calldata _name, string calldata _projectDescription)
        external notAlreadyRegistered
    {
        require(bytes(_name).length > 0, "Name cannot be empty");
        require(bytes(_projectDescription).length > 0, "Description cannot be empty");

        builders[msg.sender] = Builder({
            name: _name,
            projectDescription: _projectDescription,
            totalTipsReceived: 0,
            registeredAt: block.timestamp,
            isRegistered: true
        });

        builderIndex[totalBuilders] = msg.sender;
        totalBuilders++;

        emit BuilderRegistered(msg.sender, _name, _projectDescription, block.timestamp);
    }

    function tipBuilder(address _builderWallet)
        external payable onlyRegistered(_builderWallet)
    {
        require(msg.value > 0, "Tip must be greater than 0");
        require(_builderWallet != msg.sender, "Cannot tip yourself");

        builders[_builderWallet].totalTipsReceived += msg.value;

        (bool success, ) = payable(_builderWallet).call{value: msg.value}("");
        require(success, "Tip transfer failed");

        emit TipSent(msg.sender, _builderWallet, msg.value, block.timestamp);
    }

    function getBuilder(address _wallet)
        external view
        returns (string memory name, string memory projectDescription, uint256 totalTipsReceived, uint256 registeredAt, bool isRegistered)
    {
        Builder memory b = builders[_wallet];
        return (b.name, b.projectDescription, b.totalTipsReceived, b.registeredAt, b.isRegistered);
    }

    function getAllBuilders() external view returns (address[] memory) {
        address[] memory addresses = new address[](totalBuilders);
        for (uint256 i = 0; i < totalBuilders; i++) {
            addresses[i] = builderIndex[i];
        }
        return addresses;
    }

    function isBuilder(address _wallet) external view returns (bool) {
        return builders[_wallet].isRegistered;
    }
}
