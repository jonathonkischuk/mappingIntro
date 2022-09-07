// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.16;

// Create Contract
contract simpleMappingExample {

    // setup mapping variables                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    mapping(uint => bool) public myMapping;
    mapping(address => bool) public myAddressMapping;

    // function to set the myMapping bool value to true
    function setValue(uint _index) public {
        myMapping[_index] = true;
    }

    // function to set myAddressMapping bool value to true
    function setMyAddresstoTrue() public {
        myAddressMapping[msg.sender] = true;
    }


    // uint => bool mapping serves as value to uint => MAPPING... pair
    mapping (uint => mapping(uint => bool)) uintUintBoolMapping;


    // pair of functions: 1) to set the uint/bool mapping & 2) to "get" the uint/bool mapping
    function setUintBoolMapping(uint _index1, uint _index2, bool _value) public {
        uintUintBoolMapping[_index1][_index2] = _value;
    }

    function getUintBoolMapping(uint _index1, uint _index2) public view returns (bool) {
        return uintUintBoolMapping[_index1][_index2];
    }
}
