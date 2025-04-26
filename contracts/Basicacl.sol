//SPX-Licence-Identifier: MIT
pragma solidity ^0.8.19;

contract Basicacl {
    address private owner;

    constructor(){
        owner = address(msg.sender);
    }

    error NotOwnerAccess();
    modifier onlyOwner(){
        if(msg.sender!=owner) revert NotOwnerAccess();
        _;
    }

    function withdraw() public onlyOwner {
        //some withdraw logic here
    }

    function changeOwner() public onlyOwner {
        owner = msg.sender;
    }
}