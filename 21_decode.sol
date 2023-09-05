// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Decoding {
    //     function decode(bytes memory data)
    //         public
    //         pure
    //         returns (string memory daddr, uint256 dnum , string memory name)
    //     {
    //         (daddr, dnum, name) = abi.decode(data, (string, uint256, string));
    //     }

    // function decode(bytes memory data)
    //     public
    //     pure
    //     returns (address daddr, uint256 dnum)
    // {
    //     (daddr, dnum) = abi.decode(data, (address, uint256));
    // }



    function Encode(uint id, string memory name,string memory Birth)public pure returns(bytes memory){
        return (abi.encode(id,name,Birth));
    }


    function decode(bytes memory data)
        public
        pure
        returns (uint id, string memory name,string memory Birth)
    {
        (id,name,Birth) = abi.decode(data, (uint256,string,string));
    }
}
