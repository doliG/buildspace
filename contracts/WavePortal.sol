// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

struct Wave {
    address waver;
    uint256 date;
}

contract WavePortal {
    uint256 totalWaves;
    Wave[] waves;

    constructor() {
        console.log("Yo yo, I am a contract and I am smart");
    }

    function wave() public {
        totalWaves += 1;
        Wave memory w = Wave(msg.sender, block.timestamp);
        waves.push(w);

        console.log("%s has waved!", msg.sender);
        console.log("wave.waver: %s", w.waver);
        console.log("wave.date: %d", w.date);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }
}
