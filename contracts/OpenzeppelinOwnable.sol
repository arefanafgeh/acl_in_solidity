//SPX-Licence-Identifier: MIT
pragma solidity ^0.8.19;
import "@openzeppelin/contracts/access/Ownable.sol";
contract OpenzeppelinOwnable is Ownable{
    // address private owner;

    constructor() Ownable(msg.sender){
    }

    // error NotOwnerAccess();
    // modifier onlyOwnerLocal(){
    //     if(msg.sender!=owner) revert NotOwnerAccess();
    //     _;
    // }

    // function withdraw() public onlyOwnerLocal {
    //     //some withdraw logic here
    // }

    // function changeOwner() public onlyOwnerLocal {
    //     owner = msg.sender;
    // }

    function guardedbyOwnable() public onlyOwner{

    }
}