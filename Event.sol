pragma solidity ^0.6.2;

contract Event{
    address user;
    uint index=0;
    mapping(uint => string) valores;

    constructor(address k) public{
        user = k;
        valores[index]="User created";
        index++;
    }

    function setEvent(string memory valor) public{
        require(msg.sender == user);
        valores[index]=valor;
        index++;
    }    

    function getEventValue(uint i) view public returns (string memory){
        string memory valor = valores[i];
        return valor;
    }    

}
