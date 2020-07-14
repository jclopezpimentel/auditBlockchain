pragma solidity ^0.6.2;

contract RootSC{
    address root;
    mapping (address=> address) admors;

    event CreateUser(address creator, address newUser);

    constructor() public{
        root = msg.sender;
        emit CreateUser(root,root);
    }

    function addAdmor(address k) public{
        require(msg.sender == root);
        admors[k] = k;
        emit CreateUser(root,k);
    }
    
}