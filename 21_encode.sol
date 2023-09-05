// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// contract Encoding {
//     // 1- abi.encode():
//     function encode(address _address, uint256 data)
//         public
//         pure
//         returns (bytes memory)
//     {
//         return (abi.encode(_address, data));
//     }

//     //2- abi.encodePacked():
//     function encodePacked(address _address, uint256 data)
//         public
//         pure
//         returns (bytes memory result)
//     {
//         return (result = abi.encodePacked(_address, data));
//     }

//     //3- abi.encodeWithSelector():
//     function encodeWithSelector(address _address, uint256 data)
//         public
//         pure
//         returns (bytes memory result)
//     {
//         result = abi.encodeWithSelector(
//             bytes4(keccak256("encodeWithSelector(address, uint )")),
//             _address,
//             data
//         );
//     }

// 4-abi.encodeWithSignature():
//     function encodeWithSignature(address _address, uint256 data)
//         public
//         pure
//         returns (bytes memory result)
//     {
//         result = abi.encodeWithSignature(
//             ("encodeWithSelector(address, uint )"),
//             _address,
//             data
//         );
//     }
// }

//Task

contract Task {
    // struct Laptop {
    //     uint256 price;
    //     string name;
    //     string company;
    // }
    // Laptop _laptop = Laptop(1200, "dell", "microsoft");

    // function Encode() public view returns (bytes memory result) {
    //     return (abi.encode(_laptop));
    // }


      function encode(address _address, uint256 data)
        public
        pure
        returns (bytes memory)
    {
        return (abi.encode(_address, data));
   }
}
