// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
// contract Mappings{
//  mapping(address => string) public AddrToName;
// function AddValue(address _addr, string memory _name) public{
//  AddrToName[_addr] = _name;
//  }

//  function get(address _addr) public view returns(string memory){
//  return AddrToName[_addr];
//  }

//  function remove(address _addr) public{
//  delete AddrToName[_addr];
//  }

// }

contract Mapper{
    mapping(string =>uint )public NameToBalance;
    
    function AddValue(string memory _name, uint _balance)public{
        NameToBalance[_name] = _balance;
    }

    function get(string memory _name)public view returns(uint){
        return NameToBalance[_name];
    }

    function reset(string memory _name)public {
        delete NameToBalance[_name];
    }

}
