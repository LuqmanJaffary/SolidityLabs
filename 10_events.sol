// // SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// // contract EventToken{
// // mapping(address=>uint) _balances;
// // event Transfer(address ,address, uint);
// // function _transfer(address from, address to, uint256 amount)
// // external {
// //  _balances[from] = 10000000; // give some initial tokens to transfer address
// //  _balances[from] -= amount; // "from" address minus the number of transfer
// //  _balances[to] += amount; // "to" address adds the number of transfer
// //  // emit event
// //  emit Transfer(from, to, amount);
// //  }
// // }

// contract Events {
//     enum Quality {
//         Good,
//         Moderate,
//         Bad
//     }
//     struct specs {
//         string microprocessor;
//         uint256 RAM;
//     }
//     //A single event can have multiple parameters
//     event multi(string laptop, uint256 price);
//     //You can also emit enums and structs as well
//     //An event can have upto 3 indexed parameters
//     event multiple(
//         string laptop,
//         uint256 indexed price,
//         Quality indexed q,
//         specs indexed s
//     );
//     //Naming the variable in an event is not necessary
//     event mu(string, Quality);

//     //You can also emit empty events
//     event empty();

//     function emits() public {
//         emit multi("Hp", 150000);
//         emit multiple("dell", 100000, Quality.Good, specs("intel", 128));
//         emit mu("Lenovo", Quality.Moderate);
//         emit empty();
//     }
// }


contract mapper{
    mapping(uint=>uint) maps;
    function get(uint i)public view returns(uint){
        return maps[i];
    }
    // struct userInfo{
    //     string name;
    //     uint age;
    //     string cit;
    // }

}
