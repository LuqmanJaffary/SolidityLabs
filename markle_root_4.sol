// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// contract markleRoot {
//     uint256[] arr;

//     function markle() public returns (uint256[] memory) {
//         while (arr.length > 1) {
//             uint256[] memory root = new uint256[](arr.length / 2);
//             for (uint256 i = 0; i < arr.length; i += 2) {
//                 if (i + 1 < arr.length) {
//                     root[i / 2] = arr[i] + arr[i + 1];
//                 } else {
//                     root[i / 2] = arr[i];
//                 }
//             }
//             arr = root;
//         }
//         return arr;
//     }

//     function push(uint256 numbers) public {
//         arr.push(numbers);
//     }

//     function get() public view returns (uint256[] memory) {
//         return arr;
//     }
// }


contract markle {
    uint256[] arr = [1,1,2,3];

    function loops() public {
        uint256 length = arr.length;
        uint256 offset = 0;
        while (length != 1) {
            for (uint256 i = 0; i < length; i += 2) {
                arr.push(arr[i + offset] + arr[i + offset + 1]);
            }
            offset += length;
            length = length / 2;
        }
    }

    function getter() public view returns (uint256[] memory) {
        return arr;
    }
}
