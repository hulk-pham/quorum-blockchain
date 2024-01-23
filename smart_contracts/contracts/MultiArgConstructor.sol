// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract MultiArgConstructor {
    uint public storedData;
    uint public secondData;
    event stored(address _to, uint _amount);

    constructor(uint initVal, uint initValB) {
        emit stored(msg.sender, initVal);
        storedData = initVal;
        secondData = initValB;
    }

    function set(uint x) public {
        emit stored(msg.sender, x);
        storedData = x;
    }

    function setSecond(uint x) public {
        secondData = x;
    }

    function get() public view returns (uint retVal) {
        return storedData;
    }

    function getSecond() public view returns (uint retVal) {
        return secondData;
    }
}
