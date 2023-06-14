// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

contract Sample {
    uint256 private a = 99; // Slot 0
    uint128 private b = 88; // Slot 1 - 16 bytes from right
    uint128 private c = 77; // Slot 1 - 16 bytes from left
    bool private d = true; //Slot 2 - 1 byte from right
    bytes4 private e = 0xabcdefad; //Slot 2 - 4 byte from right from variable d
    uint8 private f = 4; //Slot 2 - 1 byte from right from variable e
    uint16 private g = 7; //Slot 2 - 2 byte from right from variable f

    function getPrivateVar() external view returns (uint256) {
        return a;
    }
}
