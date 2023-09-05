// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// mapping(keyType => mapping(keyType => valueType)) <access specifier> <name>;
// contract Mappings{
//  mapping(address => mapping(string => string)) public AddrWalletToName;

//  function AddValue(address _addr, string memory _walletname, string memory _name) public{
//  AddrWalletToName[_addr][_walletname] = _name;
//  }
//  function get(address _addr, string memory _walletname) public view returns(string memory){
//  return AddrWalletToName[_addr][_walletname];
//  }
//  function remove(address _addr, string memory _walletname) public{
//  delete AddrWalletToName[_addr][_walletname];
//  } 
//  }

// Task
// contract Mappings{
//   mapping(address => mapping(string => mapping(string => uint))) public
// AddrWalletToName;

//  function AddValue(address _addr, string memory _walletname, string memory _name, uint _balance) public{
//  AddrWalletToName[_addr][_walletname][_name] = _balance;
//  }
//  function get(address _addr, string memory _walletname,string memory _name) public view returns(uint){
//  return AddrWalletToName[_addr][_walletname][_name];
//  }
//  function remove(address _addr, string memory _walletname,string memory _name) public{
//  delete AddrWalletToName[_addr][_walletname][_name];
//  } 
//  }
//Task
contract NameMap{
    mapping (uint =>mapping (address=>mapping (string=>string))) public UserMap;

function setMap(uint _yearofbirth, address _wallet, string memory _codename, string memory _username) public{
    UserMap[_yearofbirth][_wallet][_codename] = _username;
}

function getMap(uint _yearofbirth, address _wallet, string memory _codename) public
view returns(string memory _username){
    return UserMap[_yearofbirth][_wallet][_codename];
}

function reset(uint _yearofbirth, address _wallet, string memory _codename) public{
    delete UserMap[_yearofbirth][_wallet][_codename];
}



}