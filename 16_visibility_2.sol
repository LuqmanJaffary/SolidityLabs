// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// contract External {
//     // string external externalmsg = "External Variable is Called";
//     function getexternal() external pure returns (string memory) {
//         return "External Function";
//     }
//     // function getexternalfunc() public view returns(string memory){
//     // return getexternal();

//     // *State varible cannot be declared as external
// }

// contract External2 is External {
//     External public ext = new External();

//     function name() external view returns (string memory) {
//         return ext.getexternal();
//     }
// }

contract Apartment {
    uint256 internal tenantcout;

    function joinApartment(uint256 newTenant) external {
        tenantcout += newTenant;
    }
}

contract Tenant is Apartment {
    // Apartment public  apertment = new Apartment();
    // //     // joinApartment();

    // function getter(uint newTenant) public view returns (uint256) {
    //     return apertment.joinApartment(uint newTenant);
    //     // return tenantcout;
    // }
}
