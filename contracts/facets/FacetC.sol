// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;




library LibA {

struct DiamondStorage {
    address owner;
    bytes32 dataA;
}


function diamondStorage() internal pure returns(DiamondStorage storage ds) {
    bytes32 storagePosition = keccak256("diamond.storage.LibA");
    assembly {
    ds.slot := storagePosition
    }
}


}


contract FacetC {


    function setDataA(bytes32 _dataA) external {
        LibA.DiamondStorage storage ds = LibA.diamondStorage();
        ds.dataA = _dataA;
    }


      function getDataA(bytes32 _dataA) external {
        LibA.DiamondStorage storage ds = LibA.diamondStorage();
        ds.dataA = _dataA;
    }
}



// 0xEd322bD08aD78CD86bbD35c50f146cfCeC6782B4