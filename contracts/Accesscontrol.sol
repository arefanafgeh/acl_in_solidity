//SPX-Licence-Identifier: UNLICENCED

pragma solidity ^0.8.19;

import "@openzeppelin/contracts/access/AccessControl.sol";

contract Accesscontrol is AccessControl {

    bytes32 public constant testrole=keccak256("MAMAD_ROLE");

    constructor(){
        _grantRole(testrole , msg.sender);
    }

    function fakemint(uint _paramtest) public onlyRole(testrole){
        //Some logics here
    } 
}