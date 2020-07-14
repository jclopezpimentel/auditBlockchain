pragma solidity ^0.6.2;
import "Event.sol";

contract User{
    address father;
    address user;
    address contractAdd;
    string typeUser;
    Event eventC;
    
    constructor(address k,string memory typeU, address fatherL) public{
        user = k;
        typeUser = typeU;
        father = fatherL;
    }

    function getType() view public returns (string memory){
        return typeUser;
    }    

    function isAdmor() view public returns (bool){
        bool answer=false;
        if(keccak256(abi.encodePacked(typeUser))==keccak256(abi.encodePacked("Admor"))){
            answer=true;
        }
        return answer;
    }
    
    function setContractAdd(address conAdd) public{
        contractAdd = conAdd;
    }

    function getContractAdd() view public returns(address){
        return contractAdd;
    }
 
     function setEvent(Event eventL) public{
        eventC = eventL;
    }

    function getEvent() view public returns(Event){
        return eventC;
    }
   
}